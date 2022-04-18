import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ethiotour/splash/onboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String title = 'Ethio Tour';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset("assets/Fasilides_Palace_01.jpg"),  
        // ignore: prefer_const_constructors
        nextScreen: OnBoard(),
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.white,
        duration: 1000,
        ),
    );
  }
}
 