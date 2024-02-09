// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: QuizApp(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class QuizApp extends StatefulWidget {
//   const QuizApp({super.key});

//   @override
//   State createState() {
//     return _QuizAppState();
//   }
// }

// class _QuizAppState extends State<QuizApp> {
//   @override
//   List<Map> allquetions = [
//     {
//       "quetions": "Who is the founder of Microsoft?",
//       "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
//       "answerIndex": 2,
//     },
//     {
//       "quetions": "Who is the founder of Apple?",
//       "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
//       "answerIndex": 0,
//     },
//     {
//       "quetions": "Who is the founder of Amazon?",
//       "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
//       "answerIndex": 1,
//     },
//     {
//       "quetions": "Who is the founder of Tesla?",
//       "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
//       "answerIndex": 3,
//     },
//     {
//       "quetions": "Who is the founder of Google?",
//       "options": ["Steve Jobs", "Lary Page", "Bill Gates", "Elon Musk"],
//       "answerIndex": 1,
//     },
//   ];

//   bool quetionscreen = true;
//   int quetionIndex = 0;
//   Scaffold isquetionscreen() {
//     if (quetionscreen == true) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "QuizApp",
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.w800,
//               color: Colors.orange,
//             ),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//         ),
//         body: const Column(
//           children: [
//             SizedBox(
//               height: 25,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "quetions : ",
//                   style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 Text(
//                   "${quetionIndex + 1}/${(allquetions.length)}",
//                   style: const TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             SizedBox(
//               width: 380,
//               height: 50,
//               child: Text(
//                 allquetions[quetionIndex]["quetions"],
//                 style: TextStyle(
//                   fontSize: 23,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text(
//                 "A.${allquetions[quetionIndex]["options"][0]}",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text(
//                 "A.${allquetions[quetionIndex]["options"][0]}",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text(
//                 "B.${allquetions[quetionIndex]["options"][1]}",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text(
//                 "C.${allquetions[quetionIndex]["options"][2]}",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text(
//                 "D.${allquetions[quetionIndex]["options"][3]}",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: const Icon(
//             Icons.forward,
//             color: Colors.orange,
//           ),
//         ),
//       );
//     }
//   }
// }

import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State {
  List<Map> allquetions = [
    {
      "quetions": "Who is the founder of Microsoft?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 2,
    },
    {
      "quetions": "Who is the founder of Apple?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 0,
    },
    {
      "quetions": "Who is the founder of Amazon?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 1,
    },
    {
      "quetions": "Who is the founder of Tesla?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 3,
    },
    {
      "quetions": "Who is the founder of Google?",
      "options": ["Steve Jobs", "Lary Page", "Bill Gates", "Elon Musk"],
      "answerIndex": 1,
    },
  ];
  bool quetionscreen = true;
  int quetionIndex = 0;
  Scaffold isquetionscreen() {
    if (quetionscreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Quetions : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${quetionIndex + 1}/${allquetions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                allquetions[quetionIndex]["quetions"],
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 20,
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "A.${allquetions[quetionIndex]["options"][0]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "A.${allquetions[quetionIndex]["options"][0]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "B.${allquetions[quetionIndex]["options"][1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
              
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "C.${allquetions[quetionIndex]["options"][2]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "D.${allquetions[quetionIndex]["options"][3]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return const Scaffold();
    }
  }

  @override
  Widget build(BuildContext context) {
    return isquetionscreen();
  }
}
