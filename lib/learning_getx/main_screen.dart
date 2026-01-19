import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: .center,
              children: [
                Card(
                  color: Colors.amber,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Center(
                      child: Text(
                        "0",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                FloatingActionButton(onPressed:() {
                },
                  child: Text("Add"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
