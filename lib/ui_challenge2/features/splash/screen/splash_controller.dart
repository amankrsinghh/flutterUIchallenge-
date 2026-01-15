import 'package:flutter/cupertino.dart';

import '../../../../routes/routes.dart';

class SplashController {
  void splash (BuildContext context){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, AppRoutes.exploreScreen);
    });
  }

}