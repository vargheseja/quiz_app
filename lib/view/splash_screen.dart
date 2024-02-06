import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/view/question_screen/question_screen.dart';


class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    Timer(Duration(seconds:3 ), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => questionScreen(),));
      Center(child: Text("QUIZ APP",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),));
     });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}