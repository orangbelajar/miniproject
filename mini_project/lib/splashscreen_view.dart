import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mini_project/home_view.dart';
import 'package:mini_project/main.dart';

class SplashScreenPage extends StatefulWidget {
  
  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
 
 @override
void initState(){
  super.initState();
  startSplashScreen();
}

 startSplashScreen() async{
  var duration = const Duration(seconds: 2);
  return Timer(duration, () {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_){
        return LoginScreen();
      }),
    );
  });

  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(child: Image.asset(
      "splash.png",
    )),  
    );
  }
}