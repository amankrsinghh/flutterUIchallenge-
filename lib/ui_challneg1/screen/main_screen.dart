import 'package:flutter/material.dart';

import '../card/bookingcard.dart';
import '../card/nursecard.dart';
import 'header_part/header.dart';
import '../widgets/seperation.dart';
import '../widgets/serviceTile.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(preferredSize: Size.fromHeight(0), child:
        AppBar(
          backgroundColor:  Color(0xFF065955),
          elevation: 0,
        )),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // header section
                HeaderSection(),
                SizedBox(height: 20),

                // your booking seperatrion
                Seperation(title: "Your Bookings", subtitle: "View All"),
                SizedBox(height: 20),

                // booking card scroll view
                SingleChildScrollView(
                  padding:  EdgeInsets.only(left: 10,bottom: 10),
                  scrollDirection: Axis.horizontal,
                  child:Row(
                    children: [
                      Bookingcard(),
                      SizedBox(width: 5,),
                      Bookingcard(),
                      SizedBox(width: 5,),
                      Bookingcard(),
                      SizedBox(width: 5,),
                      Bookingcard(),
                      SizedBox(width: 5,),
                      Bookingcard(),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                //popular service seperatrion
                Seperation(title: "Popular Services", subtitle: "View All"),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 17,
                    mainAxisSpacing: 25,
                    childAspectRatio: 0.70, // controls tile height vs width
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ServiceTile(title: "House\nCleaning", imagepath: "assets/icons/cleaning.png"),
                      ServiceTile(title: "Water\nLeakage", imagepath: "assets/icons/leakages.png"),
                      ServiceTile(title: "Wall\nPainting", imagepath: "assets/icons/painting.png"),
                      ServiceTile(title: "Furniture\nRepair", imagepath: "assets/icons/furniture.png"),
                      ServiceTile(title: "Pest\nControl", imagepath: "assets/icons/pest.png"),
                      ServiceTile(title: "Electric\nRepair", imagepath: "assets/icons/electric.png"),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Seperation(title: "Recently Viewed", subtitle: "View All"),
                SizedBox(height: 20),
                SingleChildScrollView(
                  padding:  EdgeInsets.only(left: 10,bottom: 5),
                  scrollDirection: Axis.horizontal,
                  child:Row(
                    children: [
                      Nursecard(),
                      SizedBox(width: 5,),
                      Nursecard(),
                      SizedBox(width: 5,),
                      Nursecard(),
                      SizedBox(width: 5,),
                      Nursecard(),
                      SizedBox(width: 5,),
                      Nursecard(),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Seperation(title: "Nearby Maids", subtitle: "View All"),
                SizedBox(height: 20),
                SingleChildScrollView(
                  padding:  EdgeInsets.only(left: 10,bottom: 5),
                  scrollDirection: Axis.horizontal,
                  child:Row(
                    children: [
                      Nursecard(),
                      SizedBox(width: 5,),
                      Nursecard(),
                      SizedBox(width: 5,),
                      Nursecard(),
                      SizedBox(width: 5,),
                      Nursecard(),
                      SizedBox(width: 5,),
                      Nursecard(),
                    ],
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),

        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.only(bottom: 10), // lift from bottom
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(70), // curved corners
        //     child: Container(
        //       height: 90,
        //       width: 354,
        //       margin: const EdgeInsets.symmetric(horizontal: 10), // side spacing
        //       decoration: BoxDecoration(
        //         color: Colors.white,
        //         boxShadow: [
        //           BoxShadow(
        //             color: Colors.black.withOpacity(0.1),
        //             blurRadius: 10,
        //             offset: Offset(0,0), // shadow upwards
        //           ),
        //         ],
        //       ),
        //       child: BottomNavigationBar(
        //         currentIndex: 0,
        //         onTap: (index) {
        //           // handle tab change
        //         },
        //         backgroundColor: Colors.transparent,
        //         selectedItemColor: Colors.black,
        //         unselectedItemColor: Colors.grey,
        //         showSelectedLabels: false,
        //         showUnselectedLabels: false,
        //         elevation: 0,
        //         items:  [
        //           BottomNavigationBarItem(
        //             icon: Image.asset("assets/icons/home.png",height: 56,width: 56,),
        //             label: 'Home',
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Image.asset("assets/icons/analysis.png",height: 56,width: 56,),
        //             label: 'Analysis',
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Image.asset("assets/icons/profile.png",height: 56,width: 56,),
        //             label: 'Profile',
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 10,bottom: 20,right: 10),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 90,
              child: BottomNavigationBar(
                currentIndex: 0,
                onTap: (index) {},
                backgroundColor: Colors.transparent,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.grey,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                elevation: 0,
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset("assets/icons/home.png", height: 20, width: 20),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset("assets/icons/analysis.png", height: 20, width: 20),
                    label: 'Analysis',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset("assets/icons/profile.png", height: 20, width: 20),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  }
}