// import "package:dynamicquiz_app/quizapp.dart";
// import "package:flutter/material.dart";

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home:QuizApp(),
//     );
//   }
// }

import "package:flutter/material.dart";

void main() {
  runApp(MyApp() as Widget);
}

class MyApp extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Try"),
        ),
        body: Row(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
