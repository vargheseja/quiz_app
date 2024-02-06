import 'package:flutter/material.dart';
import 'package:quiz_app/utils/color_constrant.dart';
import 'package:quiz_app/view/question_screen/question_screen.dart';

class resultScreen extends StatefulWidget {
  const resultScreen({super.key});

  @override
  State<resultScreen> createState() => _resultScreenState();
}

class _resultScreenState extends State<resultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mycustomblack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Congrats",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
            color: ColorConstants.mycustomwhite),),
            SizedBox(height: 20,),
            Text("90% Score",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,
            color: ColorConstants.mycustomgreen),),
            SizedBox(height: 20,),
             TextButton(onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => questionScreen(),));
              
            }, child: Text("Restart",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorConstants.mycustomred,
            ),))
          ],
        ),
      ),
    );
  }
}