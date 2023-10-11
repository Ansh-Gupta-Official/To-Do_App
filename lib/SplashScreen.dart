import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'HomeScreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 7),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
          Lottie.asset(
          'assets/to-so.json',
          height: 300,
          width: 300,
          ),
             Padding(
               padding: EdgeInsets.all(16.0),
               child: Text(
                 'Your Todo App',
                 style: TextStyle(
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),
          ],
        ),
      )
    );
  }
}


