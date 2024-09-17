import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../controls/database.dart';
import '../widgit/logo.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Widget quizList() {
    return Container(
      child: Column(
        children: [
          StreamBuilder(
            stream: null,
            builder: (context, snapshot) {
              return
                   Container();})]));





  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: AppLogo(),
        elevation: 0.0,
        backgroundColor: Colors.transparent, systemOverlayStyle: SystemUiOverlayStyle.dark,
        //brightness: Brightness.li,
      ),
      body:  Container(
          height: 160,
          //    width: 100,
          child: StreamBuilder(
            stream: null,
            builder: (context, snap) {
                return ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding( padding: EdgeInsets.all(15),
                    child: Container(
                    color: Colors.greenAccent,
                    child: Text("esraa"),
                    ),
                    );
                  },
                );
              }

          )),
    );
  }
}
