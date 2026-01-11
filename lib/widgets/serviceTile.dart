import 'package:flutter/material.dart';
class ServiceTile extends StatelessWidget {
  final String title;
  final String imagepath;

  const ServiceTile({required this.title, required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 102,
          width: 102,
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.all(7),
              child: Image.asset(imagepath, height: 70, width: 70),
            ),
          ),
        ),
        SizedBox(height: 6),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
