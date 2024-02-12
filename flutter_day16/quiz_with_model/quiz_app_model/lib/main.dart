import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class MCAppData {
  final String? question;
  final List<String>? options;
  final int? answerIndex;

  const MCAppData({this.question, this.options, this.answerIndex});
}

class _QuizAppState extends State {
  List allQuestions = [
    const MCAppData(
      question: "Who has honored with Bharat Ratna Award in 2024?",
      options: [
        "Amitabh Bacchan",
        "Manmohan Singh",
        "Swaminathan",
        "APJ Abdul Kalam"
      ],
      answerIndex: 2,
    ),
    const MCAppData(
      question: "In Java What is Super keyword?",
      options: [
        "type Casted this",
        "Constructor",
        "Bridge between Parent and Child",
        "non static variable"
      ],
      answerIndex: 0,
    ),
    const MCAppData(
      question:
          "In Python which one will get first call if we create new Object?",
      options: ["new()", "super()", "super", "__init__()"],
      answerIndex: 0,
    ),
    const MCAppData(
      question: "In Dart Which one is an Object?",
      options: ["Functions", "variables", "Methods", "All of the above"],
      answerIndex: 3,
    ),
    const MCAppData(
      question: "JVM is written in which language?",
      options: ["CPP", "C", "Ruby", "Python"],
      answerIndex: 0,
    ),
  ];

  bool questionScreen = true;
  int questionIndex = 0;
  int selectedIndex = -1;
  int score = 0;

  MaterialStateProperty<Color?> checkAnswer(int option) {
    if (selectedIndex != -1) {
      if (option == allQuestions[questionIndex].answerIndex) {
        if (option == selectedIndex) {
          score++;
        }
        return const MaterialStatePropertyAll(Colors.green);
      } else if (option == selectedIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(Colors.white);
      }
    } else {
      return const MaterialStatePropertyAll(Colors.white);
    }
  }

  void pageNavigation() {
    if (selectedIndex != -1) {
      questionIndex++;
      selectedIndex = -1;
      if (questionIndex > allQuestions.length - 1) {
        questionScreen = false;
      }
    }
    setState(() {});
  }

  Scaffold isQuestionScreen() {
    if (questionScreen) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "Question: ${questionIndex + 1}/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "${allQuestions[questionIndex].question}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 340,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    if (selectedIndex == -1) {
                      selectedIndex = 0;
                    }
                    setState(() {});
                  },
                  style: ButtonStyle(
                    alignment: Alignment.centerLeft,
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.only(left: 35),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    backgroundColor: checkAnswer(0),
                  ),
                  child: Text(
                    "A. ${allQuestions[questionIndex].options[0]}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 340,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    if (selectedIndex == -1) {
                      selectedIndex = 1;
                    }
                    setState(() {});
                  },
                  style: ButtonStyle(
                    alignment: Alignment.centerLeft,
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.only(left: 35),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    backgroundColor: checkAnswer(1),
                  ),
                  child: Text(
                    "B. ${allQuestions[questionIndex].options[1]}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 340,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    if (selectedIndex == -1) {
                      selectedIndex = 2;
                    }
                    setState(() {});
                  },
                  style: ButtonStyle(
                    alignment: Alignment.centerLeft,
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.only(left: 35),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    backgroundColor: checkAnswer(2),
                  ),
                  child: Text(
                    "C. ${allQuestions[questionIndex].options[2]}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 340,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    if (selectedIndex == -1) {
                      selectedIndex = 3;
                    }
                    setState(() {});
                  },
                  style: ButtonStyle(
                    alignment: Alignment.centerLeft,
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.only(left: 35),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    backgroundColor: checkAnswer(3),
                  ),
                  child: Text(
                    "D. ${allQuestions[questionIndex].options[3]}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            pageNavigation();
          },
          child: const Icon(Icons.navigate_next),
        ),
      );
    } else {
      //Congratulations Scaffold.
      return Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: Image.network(
                    "https://www.shutterstock.com/image-vector/trophy-cup-champion-shiny-golden-600nw-1570181977.jpg"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Congratulations!!!",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.pinkAccent),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Thank you for giving test,We hope you have enjoyed it!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 146, 220, 61),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Score: $score/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    questionIndex = 0;
                    questionScreen = true;
                    selectedIndex = -1;
                    score = 0;
                    setState(() {});
                  },
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    backgroundColor: const MaterialStatePropertyAll(
                      Colors.purple,
                    ),
                  ),
                  child: const Text(
                    "Restart",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
