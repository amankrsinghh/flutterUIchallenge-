import 'package:amanside/ui_challenge2/features/splash/screen/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashController splashController = SplashController();
  @override
  void initState() {
    // TODO: implement initState
    splashController.splash(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade600,Colors.blue.shade800,Colors.blue.shade900],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Row(
                mainAxisAlignment: .center,
                mainAxisSize: .min,
                children: [
                  Text(
                    "Travel",
                    style: GoogleFonts.lobster(
                      textStyle: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.travel_explore_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Find Your Dream\nDestination With Us",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(fontSize: 20, color: Colors.white),
                ),
                textAlign: .center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
