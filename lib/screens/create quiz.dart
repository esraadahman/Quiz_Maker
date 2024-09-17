import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../controls/database.dart';
import '../widgit/logo.dart';
import 'add question.dart';

class CreateQuiz extends StatefulWidget {


  @override
  _CreateQuizState createState() => _CreateQuizState();
}

class _CreateQuizState extends State<CreateQuiz> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black54,
        ),
        title: AppLogo(),
        elevation: 0.0,
        backgroundColor: Colors.transparent, systemOverlayStyle: SystemUiOverlayStyle.dark,
        //brightness: Brightness.li,
      ),
      body: Form(
       // key: _formKey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Quiz Image Url (Optional)"
                ),
                onChanged: (val){
               //   quizImgUrl = val;
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Quiz Title"
                ),
                onChanged: (val){
               //   quizTitle = val;
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Quiz Description"
                ),
                onChanged: (val){
                 // quizDesc = val;
                },
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (
                      context) => AddQuestion()));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(
                      horizontal: 24, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Create Quiz",
                    style: TextStyle(
                        fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
            ],)
          ,),
      ),
    );
  }
}