import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nursecard extends StatefulWidget {
  const Nursecard({super.key});

  @override
  State<Nursecard> createState() => _NursecardState();
}

class _NursecardState extends State<Nursecard> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.white,
        elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          width: 275,
          height: 109,
          padding: EdgeInsets.only(left: 10,top: 10,right: 10),
          child: Row(
            children: [
              Container(
                child: Image.asset("assets/icons/nurse.png"),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sarah Jhonson",style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),) ),
                      SizedBox(width: 22,),
                      Text("⭐ 4.8 (124)",style:GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10,fontWeight: .w400,color: Colors.black), )),
                    ],
                  ),
                  Text("Housemaid",style:GoogleFonts.poppins(textStyle:TextStyle(color: Colors.grey,fontSize: 12,fontWeight: .w400), ) ),
                  SizedBox(height: 3),
                  Text("less than 2 hours",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12,fontWeight: .w400,color: Colors.black)),),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.people_alt_outlined,color: Colors.grey,size: 10,),
                              SizedBox(width: 5,),
                              Text("50+ orders",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: .w500),) )
                            ],
                          ),
                          Row(
          
                            children: [
                              Icon(Icons.location_on_outlined,color: Colors.grey,size: 10,),
                              SizedBox(width: 3,),
                              Text("2.1 km away",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: .w500), ))
                            ],
                          )
                        ],
                      ),
          
                        SizedBox(width: 60,),
                      Column(
                        children: [
                          Text("starting at",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey,fontSize: 8)),),
                          Text("₹299/hr",style:GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),) )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      );

  }
}
