import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../controls/database.dart';
import '../widgit/logo.dart';

class AddQuestion extends StatefulWidget {

  // final String quizId;
  // AddQuestion(this.quizId);

  @override
  _AddQuestionState createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {

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
      //  key: _formKey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: "Question"),
                onChanged: (val) {
                //  question = val;
                },
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration:
                InputDecoration(hintText: "Option1 (Correct Answer)"),
                onChanged: (val) {
                 // option1 = val;
                },
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Option2"),
                onChanged: (val){
                 // option2 = val;
                },
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Option3"),
                onChanged: (val){
               //   option3 = val;

                },
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Option4"),
                onChanged: (val){
                //  option4 = val;
                },
              ),
              SizedBox(
                height: 8,
              ),
              Spacer(),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {

                      Navigator.pop(context);

                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      padding: EdgeInsets.symmetric(
                          horizontal: 24, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Submit",
                        style:
                        TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 2 - 40,
                      padding: EdgeInsets.symmetric(
                          horizontal: 24, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Add Question",
                        style:
                        TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}