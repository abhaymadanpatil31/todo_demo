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
          style:
              TextStyle(fontSize: 20, color: Colors.black87, letterSpacing: 3),
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
              const SizedBox(
                // width: 200,
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Quetion1:What is Flutter?"),
                  SizedBox(
                    // width: 200,
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Option1",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        // width: 200,
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Option2"),
                      ),
                      SizedBox(
                        // width: 200,
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Option3"),
                      ),
                      SizedBox(
                        // width: 200,  
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Option4",textAlign: TextAlign.center,),
                      ),
                      SizedBox(
                        // width: 200,
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Next Quetion"),
          ),
        ],
      ),
    );
  }
}
