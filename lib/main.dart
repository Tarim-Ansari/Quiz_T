import 'package:flutter/material.dart';
import 'screens/result_screen.dart';





//import 'package:quiz_app/result_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Quiz_T(),
    );
  }
}

class Quiz_T extends StatefulWidget {
  const Quiz_T({super.key});

  @override
  State createState() {
    return _Quiz_TState();
  }
}

class _Quiz_TState extends State{
  List<Map> allQuestions = [
    {
      "question": " I start with ‘C’ and end with ‘S,’ and without me, the web looks plain. What am I?",
      "option": ["C++","CMS","CSS","CSV"],
      "correctoption": 2,
    },
    {
      "question": " I have loops but never get dizzy, and I help you repeat without mistakes. What am I?",
      "option": ["A compiler","A function","A for loop","A debugger"],
      "correctoption": 2,
    },
    {
      "question": "You ‘push’ me when you’re done, but I’m not a door. What am I?",
      "option": ["Git commit","Git push","API request","Stack overflow"],
      "correctoption": 1,
    },
    {
      "question": " I’m full of bugs, but no exterminator can help. What am I?",
      "option": ["A developer","A software","A coffee machine","A database"],
      "correctoption": 1,
    },
    {
      "question": " I execute your commands, but I’m not your boss. What am I?",
      "option": ["Terminal","Server","Compiler","AI"],
      "correctoption": 0,
    },
  ];

  int currentQuestIndex = 0;
  int correctAnsCount = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz App by Tarim Ansari",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.blue
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Question:",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 150,
                width: 7,
              ),
              Text(
                "${currentQuestIndex + 1}/${allQuestions.length}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            allQuestions[currentQuestIndex]['question'],
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize:25,
                color: Colors.blue
            ),
          ),
          SizedBox(
            height: 70,
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
              onPressed: () {

                if(allQuestions[currentQuestIndex]['correctoption']==0){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Correct Answer"),
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 3),
                    ),
                  ); //Scaffoldmessenger
                  correctAnsCount++;
                } //if
                else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:Text("Incorrect Answer"),
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 3),
                      )
                  ); //Scaffold
                }
                setState(() {

                });
              },//onPressed
              child: Text(
                allQuestions[currentQuestIndex]['option'][0],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
              onPressed: () {

                if(allQuestions[currentQuestIndex]['correctoption']==1){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Correct Answer"),
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 3),
                    ),
                  ); //Scaffoldmessenger
                  correctAnsCount++;
                } //if
                else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:Text("Incorrect Answer"),
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 3),
                      )
                  ); //Scaffold
                }
                setState(() {

                });
              },//onPressed
              child: Text(
                allQuestions[currentQuestIndex]['option'][1],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
              onPressed: () {

                if(allQuestions[currentQuestIndex]['correctoption']==2){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Correct Answer"),
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 3),
                    ),
                  ); //Scaffoldmessenger
                  correctAnsCount++;
                } //if
                else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:Text("Incorrect Answer"),
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 3),
                      )
                  ); //Scaffold
                }
                setState(() {

                });
              },//onPressed
              child: Text(
                allQuestions[currentQuestIndex]['option'][2],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
              onPressed: () {

                if(allQuestions[currentQuestIndex]['correctoption']==3){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Correct Answer"),
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 3),
                    ),
                  ); //Scaffoldmessenger
                  correctAnsCount++;
                } //if
                else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:Text("Incorrect Answer"),
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 3),
                      )
                  ); //Scaffold
                }
                setState(() {

                });
              },//onPressed
              child: Text(
                allQuestions[currentQuestIndex]['option'][3],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Pushes buttons to opposite ends
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0), // Adjust spacing
            child: FloatingActionButton(
              onPressed: () {
                if (currentQuestIndex > 0) {
                  setState(() {
                    currentQuestIndex--;
                  });
                }
              },
              backgroundColor: Colors.blue,
              child: Icon(Icons.arrow_back, color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 30.0), // Adjust spacing
            child: FloatingActionButton(
              onPressed: () {
                if (allQuestions.length != (currentQuestIndex + 1)) {
                  currentQuestIndex++;
                  setState(() {});
                }else{
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context){
                        return ResultScreen(correctAnswers: correctAnsCount, noOfQuestions: allQuestions.length,);
                      })
                  );
                }
              },
              backgroundColor: Colors.blue,
              child: Icon(Icons.arrow_forward, color: Colors.black),
            ),
          ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //     onPressed:(){
      //       if(allQuestions.length != (currentQuestIndex +1)){
      //         currentQuestIndex++;
      //         setState(() {
      //         });
      //       }
      //     },
      //     backgroundColor: Colors.blue,
      //   child: Icon(Icons.forward, color: Colors.black,),
      // ),

    );
  }
}