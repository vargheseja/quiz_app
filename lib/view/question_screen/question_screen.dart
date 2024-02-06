import 'package:flutter/material.dart';
import 'package:quiz_app/utils/color_constrant.dart';
import 'package:quiz_app/utils/questions_db.dart';
// import 'package:quiz_app/utils/questions_db.dart';
import 'package:quiz_app/view/result_screen/result_screen.dart';

class questionScreen extends StatefulWidget {
  const questionScreen({super.key});

  @override
  State<questionScreen> createState() => _questionScreenState();

}

class _questionScreenState extends State<questionScreen> {
  int QuestionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          Text("${QuestionIndex + 1 } /${QuestionDb.questions.length}",style: TextStyle(color: ColorConstants.mycustomblue),),
          SizedBox(width: 10,)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                
                
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: ColorConstants.mycustomgrey),
                child: Text(QuestionDb.questions[QuestionIndex]["question"],style: TextStyle(
                  color: ColorConstants.mycustomwhite,
                ),),
              ),
              SizedBox(height: 70,),
              ListView.separated(
                itemCount: QuestionDb.questions[QuestionIndex]["options"].length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => 
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                height: 40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color.fromARGB(255, 72, 71, 71))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Expanded(
                    flex: 4,
                    child: Text(QuestionDb.questions[QuestionIndex]["options"][index],style: TextStyle(
                        color: ColorConstants.mycustomwhite,
                      ),),
                    ),
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(radius: 10,backgroundColor: ColorConstants.mycustomgreen,
                      child: CircleAvatar(radius: 10,
                        backgroundColor: ColorConstants.mycustomgrey,),),
                    )
                    
                  ],
                ),
                // color: ColorConstants.mycustomgrey,
              ),
              separatorBuilder: (context, index) => SizedBox(height: 20,),
              ),
              SizedBox(height: 20,),
            
              TextButton(onPressed: () {
                
                  
                
                  
                  if(QuestionIndex < QuestionDb.questions.length-1){
                           QuestionIndex ++;
                           setState(() {});
                  }
                  else{
                 Navigator.push(context, MaterialPageRoute(builder: (context) => resultScreen(),));
                  }
              
               
              }, child: Text("Next",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: ColorConstants.mycustomblue,
              ),))
              // Container(
              //   height: 60,
              //   width: 300,
              //   decoration: BoxDecoration(
              //     color: ColorConstants.mycustomblue,
              //     borderRadius: BorderRadius.circular(15),
              //   ),
                
              //   child: Center(
              //     child: Text("Next",style: TextStyle(
              //       color: ColorConstants.mycustomred,height: 15,
              //     ),),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}