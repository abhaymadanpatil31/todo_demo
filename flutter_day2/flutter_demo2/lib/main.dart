import 'package:flutter/material.dart';
//import 'package:flutter_demo2/Assignment1.dart';
// import 'package:flutter_demo2/Assignment3.dart';
import 'package:flutter_demo2/Assignment2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body:Assignment2(),
      ),
    );
  }
}
