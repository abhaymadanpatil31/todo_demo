import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myportfolio(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class myportfolio extends StatefulWidget {
  const myportfolio({super.key});

  @override
  State<myportfolio> createState() {
    return _myportfolioState();
  }
}

class _myportfolioState extends State<myportfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Student Name: Abhay Madan Patil",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                  fontStyle: FontStyle.italic,
                ),
              ),
              ClipRRect(
                child: Image.network(
                  "https://media.licdn.com/dms/image/D4D22AQEPLnm6mgQ2aQ/feedshare-shrink_800/0/1695728957119?e=2147483647&v=beta&t=h5zPx1V-ve-IT1HqRialngWiottRujkiukOk8_VGrp8",
                  height: 00,
                  width: 300,
                  matchTextDirection: false,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
