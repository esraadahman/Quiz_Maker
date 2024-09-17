// Container(
// width: MediaQuery.of(context).size.width,
// margin: const EdgeInsets.symmetric(horizontal: 20),
// child: TextField(
// controller: _usernameController,
// decoration: InputDecoration(
// labelText: "User Name",
// filled: true,
// fillColor: backgroundColor,
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide: BorderSide(
// color: buttonColor,
// width: 0.3,
// ),
// ),
// hintText: "Enter your User Name ",
// hintStyle: TextStyle(
// color: Colors.white,
// fontSize: 10,
// ) ,
// prefixIcon: Icon(Icons.person,  color: borderColor,),
// ),
// ),
// ),

import 'dart:io';
import 'package:flutter/material.dart';

import '../color.dart';
import '../navi.dart';




void main() {
  runApp(signup_info());
}

class signup_info extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<signup_info> {

  DateTime _selectedDate = DateTime.now(); // Initial selected date

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }}



  TextEditingController username = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController fname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController code = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    fname.dispose();
    lname.dispose();
    username.dispose();
    phone.dispose();
    code.dispose();
  }


  bool getimage = false;
  File? file;
  TextEditingController title = TextEditingController();
  String url = "hassan";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: backgroundColor,
            body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child:
                      Row(children: [
                        Padding(padding: EdgeInsets.only(left: 20, right: 40),
                          child: Icon(Icons.arrow_back_ios, color: buttonColor,
                            size: 30,),),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.fromLTRB(15, 30, 0, 0),
                            child: Text(
                              '   ACCOUNT \n INFORMATION',
                              style: TextStyle(
                                  color: buttonColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            )),
                      ]),),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://th.bing.com/th/id/R.c98530977183534ed0e49e6db725bd7d?rik=qRXJBwOokn7dSQ&pid=ImgRaw&r=0"),
                      ),
                    ),

                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                        child: Text(
                          'user name',
                          style: TextStyle(
                              color: buttonColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        )),
                    Container(
                      width: 400,
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: TextField(
                        controller: username,
                        decoration: InputDecoration(
                          labelText: "User Name",
                          filled: true,
                          fillColor: backgroundColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: buttonColor,
                              width: 0.3,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                'first name',
                                style: TextStyle(
                                    color: buttonColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              )),
                          Container(
                            width: 180,
                            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: TextField(
                              controller: fname,
                              decoration: InputDecoration(
                                labelText: "First Name",
                                filled: true,
                                fillColor: backgroundColor,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: buttonColor,
                                    width: 0.3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child:
                            Column(children: [
                              Container(
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                                  child: Text(
                                    'last name',
                                    style: TextStyle(
                                        color: buttonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  )),
                              Container(
                                width: 180,
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: TextField(
                                  controller: lname,
                                  decoration: InputDecoration(
                                    labelText: "Last Name",
                                    filled: true,
                                    fillColor: backgroundColor,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: buttonColor,
                                        width: 0.3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                      ],
                    ),

                    Row(children: [
                      Column(children: [
                        Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              'code',
                              style: TextStyle(
                                  color: buttonColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            )),
                        Container(
                          width: 100,
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: TextField(
                            controller: code,
                            decoration: InputDecoration(
                              labelText: "Code",
                              filled: true,
                              fillColor: backgroundColor,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: buttonColor,
                                  width: 0.3,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child:
                          Column(children: [
                            Container(
                              //alignment: Alignment.topLeft,
                                padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                child: Text(
                                  'phone',
                                  style: TextStyle(
                                      color: buttonColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                )),
                            Container(
                              width: 270,
                              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: TextField(
                                controller: phone,
                                decoration: InputDecoration(
                                  labelText: "Phone",
                                  filled: true,
                                  fillColor: backgroundColor,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: buttonColor,
                                      width: 0.3,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],))
                    ],),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Row(children: [
                        Text(
                          'Selecte Date of Birth:',
                          style: TextStyle(fontSize: 15.0, color: buttonColor),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '   ${_selectedDate.year}-${_selectedDate
                              .month}-${_selectedDate.day}      ',
                          style: TextStyle(fontSize: 15.0, color: buttonColor),
                        ),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () => _selectDate(context),
                          child: Text('Select Date', style: TextStyle(
                              color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: buttonColor),
                        ),
                      ],),),


                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width - 40,
                      height: 50,
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (
                              context) => navie()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor,
                        ),
                        child: const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
