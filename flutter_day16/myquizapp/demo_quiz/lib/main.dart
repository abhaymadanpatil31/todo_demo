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
    );
  }
}

class Module {
  final int? answerIndex;
  final String? quetions;
  final List<String>? options;
  const Module({this.answerIndex, this.options, this.quetions});
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() {
    return _QuizApp();
  }
}

class _QuizApp extends State {
  List allList = [
    const Module(
      quetions: "Who is PM of India?",
      options: [
        "Narendra Modi",
        "Manmohan Singh",
        "Advani",
        "Amit Shah",
      ],
      answerIndex: 0,
    ),
    const Module(
      quetions: "Who is the FM of India?",
      options: [
        "Manmohan Singh",
        "Advani",
        "Amit Shah",
        "Dr.Jaishankar",
      ],
      answerIndex: 3,
    ),
    const Module(
      quetions: "Who is Finance Minister Of India?",
      options: [
        "Narendra Modi",
        "Nirmala Sitaraman",
        "Advani",
        "Amit Shah",
      ],
      answerIndex: 1,
    ),
    const Module(
      quetions: "Who is Home Minister Of India?",
      options: [
        "Narendra Modi",
        "Manmohan Singh",
        "Amit Shah",
        "Advani",
      ],
      answerIndex: 2,
    ),
  ];
  bool isQuetionScreen = true;
  int quetionIndex = 0;
  int selectedIndex = -1;
  int score = 0;
  MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {
    if (selectedIndex != -1) {
      if (buttonIndex == allList[quetionIndex].answerIndex) {
        if (buttonIndex == selectedIndex) {
          score++;
        }
        return const MaterialStatePropertyAll(Colors.green);
      } else if (buttonIndex == selectedIndex) {
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
      selectedIndex = -1;
      quetionIndex++;
      if (quetionIndex > allList.length - 1) {
        isQuetionScreen = false;
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (isQuetionScreen) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text("Quetions:${quetionIndex}/${allList.length}"),
              const SizedBox(
                height: 30,
              ),
              Text("Quetions:${allList[quetionIndex].quetions}"),
              SizedBox(
                child: ElevatedButton(
                  //1
                  onPressed: () {
                    if (selectedIndex == -1) {
                      selectedIndex = 0;
                    }
                    setState(() {});
                  },
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(0),
                  ),
                  child: Text("A. ${allList[quetionIndex].options[0]}"),
                ),
              ),
              SizedBox(
                child: ElevatedButton(
                  //2
                  onPressed: () {
                    if (selectedIndex == -1) {
                      selectedIndex = 1;
                    }
                    setState(() {});
                  },
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(1),
                  ),
                  child: Text("B. ${allList[quetionIndex].options[1]}"),
                ),
              ),
              SizedBox(
                child: ElevatedButton(
                  //3
                  onPressed: () {
                    if (selectedIndex == -1) {
                      selectedIndex = 2;
                    }
                    setState(() {});
                  },
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(2),
                  ),
                  child: Text("C. ${allList[quetionIndex].options[2]}"),
                ),
              ),
              SizedBox(
                child: ElevatedButton(
                  //4
                  onPressed: () {
                    if (selectedIndex == -1) {
                      selectedIndex = 3;
                    }
                    setState(() {});
                  },
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(3),
                  ),
                  child: Text("D. ${allList[quetionIndex].options[3]}"),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            pageNavigation();
          },
          child: const Icon(Icons.navigate_next),
        ),
      );
    } else {
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
                  "https://www.shutterstock.com/image-vector/trophy-cup-champion-shiny-golden-600nw-1570181977.jpg",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Congratulations!!!",
              ),
              const Text(
                "Thank you for Giving Test. We hope you have enjoyed the app!",
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Score:$score",
              ),
            ],
          ),
        ),
      );
    }
  }
}
