import 'package:flutter/cupertino.dart';

import '../../../../routes/routes.dart';

class SplashController {
  void splash (BuildContext context){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushNamed(context, AppRoutes.Uichallenge1);
    });
  }

}