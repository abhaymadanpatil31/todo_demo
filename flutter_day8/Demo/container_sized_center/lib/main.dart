import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext constext) {
    return MaterialApp(
      title: "Hello Core2web",
      home: Scaffold(
        appBar: AppBar(
          title:const Text("AppBar"),
        ),
        body: const Column(
          height: 100,
          width: 100,

        ),
      ),
    );
  }
}
