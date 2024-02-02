import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() {
    return _Assignment4();
  }
}

class _Assignment4 extends State<Assignment4> {
  bool box1color = false;
  bool box2color = false;
  Color setBox1Color() {
    if (box1color == false) {
      return Colors.red;
    } else {
      return Colors.black;
    }
  }

  Color setBox2Color() {
    if (box1color == false) {
      return Colors.black;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TogglingButtons",
          style: TextStyle(fontSize: 29, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 200,
                color: setBox1Color(),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (box1color == false) {
                      box1color = true;
                    } else {
                      box1color = false;
                    }
                  });
                },
                child: const Text("Button1"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 200,
                color: setBox2Color(),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (box2color == false) {
                      box2color = true;
                    } else {
                      box2color = false;
                    }
                  });
                },
                child: const Text("Button2"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
