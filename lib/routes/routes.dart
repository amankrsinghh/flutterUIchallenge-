import 'package:amanside/ui_challenge2/features/splash/screen/splash_screen.dart';
import 'package:flutter/material.dart';

import '../learning_getx/main_screen.dart';
import '../ui_challenge2/features/explore/screen/explore_screen.dart';
import '../ui_challneg1/screen/main_screen.dart';
class AppRoutes{

  static const String Uichallenge1 = "/Uichallenge1";
  static const String Uichallenge2 = "/Uichallenge2";
  static const String exploreScreen = "/exploreSceen";
  static const String Getx_screen = "/getx_screen";

  static Map<String,WidgetBuilder> routes = {
    Uichallenge1: (context) => HomeScreen(),
    Uichallenge2: (context) => SplashScreen(),
    exploreScreen: (context) => ExploreScreen(),
    Getx_screen: (context) => MainScreen(),



};



}
