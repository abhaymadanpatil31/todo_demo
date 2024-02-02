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
  State<QuizApp> createState() {
    return _QuizApp();
  }
}

class _QuizApp extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
        ),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("Quetion1/10"),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Quetion1:What is Flutter?"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Option1", textAlign: TextAlign.center,),
                        
                      ),
                       ElevatedButton(
                        onPressed: () {},
                        child: const Text("Option2"),
                      ),
                       ElevatedButton(
                        onPressed: () {},
                        child: const Text("Option3"),
                      ),
                       ElevatedButton(
                        onPressed: () {},
                        child: const Text("Option4"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),  ElevatedButton(
                        onPressed: () {},
                        child: const Text("Next Quetion"),
                      ),

        ],
      ),
    );
  }
}
