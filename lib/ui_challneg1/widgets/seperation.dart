import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Seperation extends StatefulWidget {
  final String title;
  final String subtitle;

  const Seperation({super.key, this.title = "", this.subtitle = ""});

  @override
  State<Seperation> createState() => _SeperationState();
}

class _SeperationState extends State<Seperation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10,left: 10),
      height: 21,
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.title,style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 14) ),),
          Text(widget.subtitle,style: GoogleFonts.poppins(textStyle: TextStyle( fontSize: 12,color: Colors.blue,fontWeight: .w500) ),)
        ],
      ),
    );
  }
}
