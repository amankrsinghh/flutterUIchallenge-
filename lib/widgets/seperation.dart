import 'package:flutter/material.dart';
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
      height: 21,
      width: 354,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
          Text(widget.subtitle,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10,color: Colors.blueAccent),)
        ],
      ),
    );
  }
}
