import 'package:flutter/material.dart';
//import 'package:flutter_demo1/Assignment1.dart';
//  import 'package:flutter_demo1/Assignment2.dart';
import 'package:flutter_demo1/Assignment3.dart';
// import 'package:flutter_demo1/Assignment4.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Assignment3(),
      ),
    );
  }
}
