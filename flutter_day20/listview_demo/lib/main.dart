import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextFieldDemo(),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State createState() {
    return _TextFieldDemo();
  }
}

class _TextFieldDemo extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TextFieldDemo",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              constraints: BoxConstraints(),
            ),
          ),
        ],
      ),
    );
  }
}
