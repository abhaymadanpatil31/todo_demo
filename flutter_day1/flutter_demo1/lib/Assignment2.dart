import "package:flutter/material.dart";

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State createState() {
    return _Assignment2();
  }
}

class _Assignment2 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Color Toggling",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.red,
                ),
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.green,
                ),
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
