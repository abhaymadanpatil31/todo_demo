import "package:flutter/material.dart";

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});
   int index = -1;
  Color buttonColor() {
    if (index == 0) {
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Analysing",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              ElevatedButton(
                onPressed: () {
                  setState() {
                    if (index == -1) {
                      index += 1;
                    }
                  }

                  ;
                },
                child: const Text("Button1"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Button2"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Button3"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
