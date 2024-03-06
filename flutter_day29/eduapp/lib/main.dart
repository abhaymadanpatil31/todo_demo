import "package:eduapp/Page1.dart";
import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
