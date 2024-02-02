import 'package:flutter/material.dart';
import 'package:flutter_application_demo4/Assignment10.dart';
//import 'package:flutter_application_demo4/Assignment2.dart';
//import 'package:flutter_application_demo4/Assignment3.dart';
//import 'package:flutter_application_demo4/Assignment4.dart';
//import 'package:flutter_application_demo4/Assignment5.dart';
//import 'package:flutter_application_demo4/Assignment6.dart';
//import 'package:flutter_application_demo4/Assignment7.dart';
//import 'package:flutter_application_demo4/Assignment8.dart';
//import 'package:flutter_application_demo4/Assignment9.dart';
//import "Assignment1.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Assignment10(),
      ),
    );
  }
}
