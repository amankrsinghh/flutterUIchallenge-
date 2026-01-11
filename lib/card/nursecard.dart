import 'package:flutter/material.dart';

class Nursecard extends StatefulWidget {
  const Nursecard({super.key});

  @override
  State<Nursecard> createState() => _NursecardState();
}

class _NursecardState extends State<Nursecard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 109,
      width: 275,
      child: Card(
        elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
                    Text("Sarah Jhonson",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                    SizedBox(width: 22,),
                    Text("⭐ 4.8 (124)",style: TextStyle(fontSize: 10),),
                  ],
                ),
                Text("Housemaid",style: TextStyle(color: Colors.grey,fontSize: 12),),
                SizedBox(height: 3),
                Text("less than 2 hours"),
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
                            Text("50+ orders",style: TextStyle(color: Colors.grey,fontSize: 10),)
                          ],
                        ),
                        Row(

                          children: [
                            Icon(Icons.location_on_outlined,color: Colors.grey,size: 10,),
                            SizedBox(width: 3,),
                            Text("2.1 km away",style: TextStyle(color: Colors.grey,fontSize: 10),)
                          ],
                        )
                      ],
                    ),

                      SizedBox(width: 60,),
                    Column(
                      children: [
                        Text("starting at",style: TextStyle(color: Colors.grey,fontSize: 10),),
                        Text("₹299/hr",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
