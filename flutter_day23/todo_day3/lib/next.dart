import 'package:flutter/material.dart';
import 'list.dart';

import 'package:google_fonts/google_fonts.dart';

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  int counter = 0;

  // List conColor = [
  //   // 0xffFAE8E8,
  // ];

  List conColor = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 167, 177),
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: conColor.length,
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            height: 140,
            margin: const EdgeInsets.only(top: 20, left: 15, right: 20),
            decoration: BoxDecoration(
              color: Color(conColor[index]),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 79,
                      height: 79,
                      margin:
                          const EdgeInsets.only(top: 18, left: 20, right: 40),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        "assets/images/img1.png",
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 210,
                          height: 20,
                          margin: const EdgeInsets.only(top: 12),
                          child: Text(
                            "Lorem Ipsum is simply setting industry.",
                            style: GoogleFonts.quicksand(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 210,
                          height: 60,
                          child: Text(
                            "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            style: GoogleFonts.quicksand(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 84, 84, 84),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(
                        "10 July 2023",
                        style: GoogleFonts.quicksand(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 132, 132, 132),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.edit_outlined,
                      color: Color.fromARGB(255, 0, 139, 148),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.delete_outlined,
                      color: Color.fromARGB(255, 0, 139, 148),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (counter == 5) {
              counter = 1;
              conColor.add(conColor[counter]);
            } else {
              counter++;
              conColor.add(conColor[counter]);
            }
            conColor.add(counter);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
