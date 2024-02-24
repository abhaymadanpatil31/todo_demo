import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FigmaDemo(),
    );
  }
}

class FigmaDemo extends StatefulWidget {
  const FigmaDemo({super.key});
  @override
  State createState() => _FigmaDemo();
}

class _FigmaDemo extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Todo list",
          style: GoogleFonts.quicksand(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              margin: const EdgeInsets.only(left: 0),
              color: Colors.blue,
              // child: Row(
              //   // mainAxisAlignment: MainAxisAlignment.center,
              ///   children: [
              //     Container(
              //       height: 50,
              //       width: 50,
              //       color: Colors.black,
              //     ),
              //   ],
              // ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
