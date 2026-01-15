import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              //// header part //////
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .start,
                  children: [
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          "Hi, Aman 👋",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          "Explore the world",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 21,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),

                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/icons/user.png"),
                    ),
                  ],
                ),

                ////////////// search box //////////////////////////
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                    left: 20,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Container(
                        width: 220,
                        child: Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search places",
                              border: InputBorder.none,
                              hintStyle: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        child: VerticalDivider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                      Icon(
                        Icons.display_settings,
                        color: Colors.grey,
                        size: 33,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
