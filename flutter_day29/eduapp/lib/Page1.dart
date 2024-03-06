import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import "package:google_fonts/google_fonts.dart";

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State createState() => _Page1State();
}

class _Page1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        leading: Image.asset("asset/images/menu.png"),
        actions: [
          Image.asset("asset/images/bell.png"),
        ],
        forceMaterialTransparency: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to new",
                style: GoogleFonts.jost(
                  textStyle: const TextStyle(
                    fontSize: 26.98,
                    fontWeight: FontWeight.w300,
                  ),
                )),
            Text("Educourse",
                style: GoogleFonts.jost(
                  textStyle: const TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.w700,
                  ),
                )),
            // Container(),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Enter your Keyboard",
                    suffixIcon:const Icon(
                      Icons.search,
                      size: 30,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        width: 4,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 462,
                  width: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Course for you",
                        style: GoogleFonts.jost(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 20, top: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red,
                                  gradient: const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    colors: [
                                      Colors.pink,
                                      Colors.purple,
                                    ],
                                  ),
                                ),
                                height: 200,
                                width: 190,
                                child: Text(
                                  "UX Designer from\n Scratch",
                                  style: GoogleFonts.jost(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                child: Container(
                                  padding: const EdgeInsets.only(left: 20, top: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.yellow,
                                    gradient: const LinearGradient(
                                      colors: [
                                        Colors.blue,
                                        Colors.blueGrey,
                                      ],
                                    ),
                                  ),
                                  height: 200,
                                  width: 190,
                                  child: Text(
                                    "Design Thinking \n The Beginner",
                                    style: GoogleFonts.jost(
                                      textStyle:const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  // color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                          // Row(
                          //   children: [
                          //     Image.asset("asset/images/C-1.png"),
                          //   ],
                          // ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Course by Catagory",
                                style: GoogleFonts.jost(
                                  textStyle:const  TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                                textDirection: TextDirection.rtl,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("asset/images/C-1.png"),
                                  Image.asset("asset/images/C-2.png"),
                                  Image.asset("asset/images/C-3.png"),
                                  Image.asset("asset/images/C-4.png"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
