import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatefulWidget {
  @override
  _HeaderSectionState createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  final ScrollController _scrollController = ScrollController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        currentPage = (_scrollController.offset / 250).round().clamp(0, 2);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Main Gradient Container
        Container(
          height: 320,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF065955),
                Color(0xFF065955),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Location + Notification (tumhara existing code)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.white, size: 14),
                            SizedBox(width: 3),
                            Text(
                              'Home',
                              style: GoogleFonts.poppins(textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),)
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              ' Sector 45, Noida 201303',
                              style: GoogleFonts.poppins(textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),)
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.arrow_drop_down_sharp, size: 14, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                    Card(
                      color: Colors.white10,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: badges.Badge(
                          badgeContent: Icon(Icons.circle, color: Colors.white, size: 8),
                          position: badges.BadgePosition.topEnd(top: 0, end: 4),
                          badgeStyle: badges.BadgeStyle(
                            badgeColor: Colors.white,
                            elevation: 0,
                            padding: EdgeInsets.zero,
                          ),
                          child: Icon(Icons.notifications_none_outlined, color: Colors.white, size: 30),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),

                // Search Bar (tumhara existing)
              Container(
                height: 50,
                width: 354,
                padding: EdgeInsets.symmetric(horizontal: 10), // keep horizontal padding
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 5)),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // centers horizontally
                  crossAxisAlignment: CrossAxisAlignment.center, // centers vertically
                  children: [
                    Icon(Icons.search, color: Colors.grey[600]), SizedBox(width: 10),
                    Expanded( // instead of Expanded, so it doesn’t push everything left
                      child: TextField(
                        textAlign: TextAlign.start, // centers text inside the field
                        decoration: InputDecoration(
                          hintText: "Search for 'Services'",
                          hintStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.grey[600], fontSize: 16,fontWeight: .w400),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                SizedBox(height: 25),

                // 👇 SCROLLABLE FESTIVE SECTION
                SingleChildScrollView(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(right: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min, // important for scroll
                    children: [
                      _buildOfferCard('ENDS IN 12:24', 'Festive packages upto 25% off', 'Extra 25% for new users*'),
                      _buildOfferCard('ENDS IN 2:15', 'Diwali Cleaning Special', '50% off on Deep Cleaning'),
                      _buildOfferCard('STARTS IN 5 days', 'New Year Deep Clean', 'Book now & get free polish!'),
                      _buildOfferCard('STARTS IN 5 days', 'New Year Deep Clean', 'Book now & get free polish!'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (index) => GestureDetector(
                    onTap: () => _scrollController.animateTo(
                        index * 250.0,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      width: 8, height: 8,  // 👈 FIXED SIZE - SABKE Liye same
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(
                            currentPage == index ? 1.0 : 0.4  // 👈 Sirf opacity/opacity change
                        ),
                        shape: BoxShape.circle,  // 👈 Perfect circle
                        // Selected ke liye thoda glow effect
                        boxShadow: currentPage == index
                            ? [BoxShadow(color: Colors.white.withOpacity(0.5), blurRadius: 4, spreadRadius: 1)]
                            : null,
                      ),
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),

        // Right Bottom Wave
        Positioned(
          right: 0,
          bottom: 0,
          child: Image.asset("assets/icons/wave.png"),
        ),
      ],
    );
  }

  Widget _buildOfferCard(String timer, String title, String subtitle) {
    return Container(
      width: MediaQuery.of(context).size.width - 0.8,
      height: 132,
      margin: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(timer, style:GoogleFonts.poppins(textStyle:TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold) ) ),
          SizedBox(height: 8),
          Text(title, style: GoogleFonts.poppins(textStyle:  TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold, height: 1.1))),
          SizedBox(height: 7),
          Text(subtitle, style: GoogleFonts.poppins(textStyle:  TextStyle(color: Colors.white, fontSize: 13))),
          SizedBox(height: 8),
          Container(
            width: 94,
            height: 33,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))],
            ),
            child: Center(
              child: Text('Book Now', style: GoogleFonts.poppins(textStyle:  TextStyle(color: Color(0xFF065955), fontWeight: FontWeight.bold, fontSize: 14))),
            ),
          ),
          SizedBox(height: 10),

        ],
      ),
    );
  }
}
