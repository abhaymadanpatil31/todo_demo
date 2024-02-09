// import 'package:flutter/material.dart';

// class QuizApp extends StatefulWidget {
//   const QuizApp({super.key});

//   @override
//   State createState() => _QuizApp();
// }

// class _QuizApp extends State<QuizApp> {
//   List list = [
//     "https://play-lh.googleusercontent.com/Il1s7VYRV23p_J7m1rS8y96ldviGz0aCF31d_fLN1Yjaa8MrZGaNhqGe7uD7mHvXR2vu",
//     "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/1024px-Microsoft_logo.svg.png",
//     "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/1024px-Microsoft_logo.svg.png"
//   ];
//   int counter = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Dynamic QuizApp"),
//       ),
//       body: ListView.builder(
//         itemCount: list.length,
//         itemBuilder: (context, index) {
//           return Container(
//             alignment: Alignment.center,
//             margin: EdgeInsets.all(10),
//             height: 50,
//             width: 10,
//             color: Colors.green,
//             child: Image.network(
//                 "https://play-lh.googleusercontent.com/Il1s7VYRV23p_J7m1rS8y96ldviGz0aCF31d_fLN1Yjaa8MrZGaNhqGe7uD7mHvXR2vu"),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           counter++;
//           const Icon(Icons.add);
//         },
//         child: const Text("Add"),
//       ),
//       extendBody: true,
//     );
//   }
// }
