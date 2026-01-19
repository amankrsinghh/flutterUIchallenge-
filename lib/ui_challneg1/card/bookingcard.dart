import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Bookingcard extends StatefulWidget {
  const Bookingcard({super.key});

  @override
  State<Bookingcard> createState() => _BookingcardState();
}
class _BookingcardState extends State<Bookingcard> {
  @override
  Widget build(BuildContext context) {
    return
       Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Container(
            height: 120,
            width: 275,
            padding: EdgeInsets.all(7),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: .start,
                 children: [
                   CircleAvatar(
                     radius: 22,
                     backgroundImage: AssetImage('assets/icons/user.png'),
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Sarah Jhonson',style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14), ) ),
                       SizedBox(height: 3.5),
                       Text('Housemaid',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: .w400),)),
                     ]
                   ),
                   Container(
                     height: 22,
                     width: 64,
                     padding: EdgeInsets.all(1),
                     decoration: BoxDecoration(
                       color: Colors.green[50],
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: Colors.green,width: 1)
                     ),
                     child: Center(
                       child: Text('Confirmed',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.green.shade800,fontSize: 10,fontWeight: .w500),) ),
                     ),
                   )
                 ],
               ),
                Divider(
                  thickness: 1,
                  color: Color(0xffE7E7E7),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Thurs, Nov 13',style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 12,fontWeight: .w400,color: Colors.black) ))  ,SizedBox(width: 5,), Icon(Icons.circle,size: 4,color: Colors.black),SizedBox(width: 5,), Text("10 AM",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12,fontWeight: .w400,color: Colors.black)),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Washroom Cleaning - Deep Cleaning - 1',style:GoogleFonts.poppins(textStyle:  TextStyle(fontSize: 12,fontWeight: .w400,color: Colors.black),)),
                  ],
                ),

              ],
            ),
          ),
        ),
      );


  }
}
