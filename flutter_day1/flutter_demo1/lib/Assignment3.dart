import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State createState() {
    return _Assignment3();
  }
}

class _Assignment3 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Toggle Colors",
          style: GoogleFonts.quicksand(),
        ),
      ),
      body: Container(
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.red,
              height: 70,
              width: 70,
            ),
            Container(
              color: Colors.green,
              height: 70,
              width: 70,
            ),
            Container(
              color: Colors.blue,
              height: 70,
              width: 70,
            ),
          ],
        ),
      ),
    );
  }
}
