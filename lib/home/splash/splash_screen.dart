import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_app/home/homescreen/home_screen.dart';


class SplashScreen extends StatelessWidget {
  static const String routeName = "splash";
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    Timer(
        const Duration(seconds: 3),
            (){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HomeScreen();
              },
            ),
          );
        });
    return Scaffold(
      body: Image.asset("assets/images/splash_background.png",
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
