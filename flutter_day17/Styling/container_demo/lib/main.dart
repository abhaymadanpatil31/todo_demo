//create different list of different Widgets hierarchy
import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: Container(
          // height: 200,
          // width: 200,
          // color: Colors.red,
          // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          // color: Colors.red,
          // padding:
          //     const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          // width: 100,
          // height: 100,
          // color: Colors.blue,
          // margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
          // color: Colors.blue,
          height: 300,
          width: 300,
          // decoration: BoxDecoration(
          //   border: Border.all(
          //     color: Colors.yellow,
          //     width: 5,
          //   ),
          // ),
          // decoration: BoxDecoration(

          //   borderRadius: const BorderRadius.all(
          //     Radius.circular(20),
          //   ),
          //   border: Border.all(
          //     color: Colors.blue,
          //     width: 5,
          //   ),
          // ),
          // decoration: BoxDecoration(
          //   color: Colors.amber,
          //   borderRadius: const BorderRadius.all(
          //     Radius.circular(20),
          //   ),
          //   border: Border.all(
          //     color: Colors.blue,
          //     width: 5,
          //   ),
          // ),
          // decoration: BoxDecoration(
          //   color: Colors.amber,
          //   borderRadius: const BorderRadius.all(Radius.circular(20)),
          //   border: Border.all(
          //     color: Colors.blue,
          //     width: 5,
          //   ),
          // ),
          //  decoration: BoxDecoration(
          //     color: Colors.amber,
          //     borderRadius: const BorderRadius.all(Radius.circular(20)),
          //     border: Border.all(color: Colors.blue, width: 5),
          //     boxShadow: const [
          //       BoxShadow(
          //           color: Colors.purple, offset: Offset(30, 30), blurRadius: 8),
          //       BoxShadow(
          //         color: Colors.red,
          //         offset: Offset(20, 20),
          //         blurRadius: 8,
          //       ),
          //       BoxShadow(
          //         color: Colors.green,
          //         offset: Offset(10, 10),
          //         blurRadius: 8,
          //       ),
          //     ],
          //   ),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.blue, width: 5),
            gradient: const LinearGradient(
              stops: [0.3, 0.5],
              colors: [
                Colors.red,
                Colors.green
              ], //color is required paramter here
            ),
          ),
        ),
      ),
    );
  }
}
