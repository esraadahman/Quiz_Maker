import 'package:flutter/material.dart';
import 'package:quiz_maker/screens/Home.dart';
import 'package:quiz_maker/screens/sign%20in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget  {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: login(),
    );
  }
}

