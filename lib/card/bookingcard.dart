import 'package:flutter/material.dart';
class Bookingcard extends StatefulWidget {
  const Bookingcard({super.key});

  @override
  State<Bookingcard> createState() => _BookingcardState();
}
class _BookingcardState extends State<Bookingcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 122,
      width: 275,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.all(7),
          child: Column(
            children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 CircleAvatar(
                   radius: 24,
                   backgroundImage: AssetImage('assets/icons/user.png'),
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Sarah Jhonson',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                     SizedBox(height: 3.5),
                     Text('Housemaid',style: TextStyle(color: Colors.grey,fontSize: 12),),
                   ]
                 ),
                 Container(
                   height: 22,
                   width: 64,
                   decoration: BoxDecoration(
                     color: Colors.green[50],
                     borderRadius: BorderRadius.circular(10),
                     border: Border.all(color: Colors.green,width: 1)
                   ),
                   child: Center(
                     child: Text('Confirmed',style: TextStyle(color: Colors.green,fontSize: 12),),
                   ),
                 )
               ],
             ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Thurs, Nov 13',style: TextStyle(fontSize: 12),), SizedBox(width: 5,), Icon(Icons.circle,size: 4,color: Colors.black),SizedBox(width: 5,), Text("10 AM",style: TextStyle(fontSize: 12),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Washroom Cleaning - Deep Cleaning - 1',style: TextStyle(fontSize: 12),),
                ],
              ),

            ],
          ),
        ),
      ),
    );

  }
}
