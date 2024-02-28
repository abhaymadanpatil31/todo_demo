// import "package:google_fonts/google_fonts.dart";
// import "package:flutter/material.dart";

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: todoPractice(),
//     );
//   }
// }

// class todoPractice extends StatefulWidget {
//   const todoPractice({super.key});

//   @override
//   State createState() {
//     return _todoPracticeState();
//   }
// }

// class _todoPracticeState extends State {
//   @override
//   Widget build(BuildContext context) {
//     List colorList = const [
//       Color.fromRGBO(250, 232, 232, 1),
//       Color.fromRGBO(232, 237, 250, 1),
//       Color.fromRGBO(250, 249, 232, 1),
//       Color.fromRGBO(250, 232, 250, 1),
//     ];
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "To-do list",
//           style: GoogleFonts.quicksand(
//             color: Colors.white,
//             fontSize: 18,
//           ),
//         ),
//         backgroundColor: Colors.blue,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: ListView.builder(
//           itemCount: 5,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               //now i want to two columns,inside first column container and other column second container
//               height: 120,
//               width: 120,
//               color: colorList[index % colorList.length],
//               child: Row(
//                 children: [
//                   Container(
//                     height: 52,
//                     width: 52,
//                     decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Color.fromRGBO(255, 255, 255, 1),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: Image.network(
//                         "https://lh5.googleusercontent.com/proxy/t08n2HuxPfw8OpbutGWjekHAgxfPFv-pZZ5_-uTfhEGK8B5Lp-VN4VjrdxKtr8acgJA93S14m9NdELzjafFfy13b68pQ7zzDiAmn4Xg8LvsTw1jogn_7wStYeOx7ojx5h63Gliw",
//                         height: 20,
//                         width: 20,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.all(10),
//                           child:
//                               Text("Lorem Ipsum is simply setting industry. ",
//                                   style: GoogleFonts.quicksand(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.w600,
//                                   )),
//                         ),
//                         Column(
//                           children: [
//                             Container(
//                               child: const Text(
//                                   "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         child: const Text("1-2-23"),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// import "package:flutter/material.dart";

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Demo(),
//     );
//   }
// }

// class Demo extends StatefulWidget {
//   const Demo({super.key});

//   @override
//   State createState() {
//     return _DemoState();
//   }
// }

// class _DemoState extends State {
//   List colorList = const [
//     Color.fromRGBO(250, 232, 232, 1),
//     Color.fromRGBO(232, 237, 250, 1),
//     Color.fromRGBO(250, 249, 232, 1),
//     Color.fromRGBO(250, 232, 250, 1),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Demo"),
//       ),
//       body: ListView.builder(
//         itemCount: 5,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             color: colorList[index % colorList.length],
//             padding: EdgeInsets.all(30),
//             child: Row(
//               children: [
//                 Container(
//                   height: 52,
//                   width: 52,
//                   // padding: EdgeInsets.all(10),
//                   margin: EdgeInsets.only(right: 20),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.red,
//                   ),
//                 ),
//                 // const SizedBox(
//                 //   width: 20,
//                 // ),
//                 Expanded(
//                   child: Column(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.all(10),
//                         child: const Text(
//                             "Lorem Ipsum is simply setting industry. "),
//                       ),
//                       Container(
//                         child: const Text(
//                             "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s "),
//                       ),
//                     ],
//                   ),
//                 ),

//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:intl/intl.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoApp(),
    );
  }
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State createState() {
    return _TodoAppState();
  }
}

class ModelClass {
  final String title;
 final  String description;
  final String date;
  ModelClass({required this.title, required this.description, required this.date});
}

class _TodoAppState extends State {
  // void addCard() {}
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  void showBottomSheetDemo({int? edited}) {
    String titleop;
    String descriptionop;
    String dateop;
    if (edited != null) {
      titleController.text = cardList[edited].title;
      descriptionController.text = cardList[edited].description;
      dateController.text = cardList[edited].date;
    }

    showModalBottomSheet(
        isScrollControlled:
            true, //by default this parameter is false we have to turn it on.
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,

              //to avoid the keyboard overlap the screen.
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Create Task",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.purpleAccent,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: descriptionController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.purpleAccent,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.date_range_rounded),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.purpleAccent,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025),
                        );
                        String formatedDate =
                            DateFormat.yMMMd().format(pickeddate!);
                        setState(() {
                          dateController.text = formatedDate;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      setState(() {
                        titleop = titleController.text;
                        descriptionop = descriptionController.text;
                        dateop = dateController.text;

                        if (titleop.trim().isNotEmpty &&
                            descriptionop.trim().isNotEmpty &&
                            dateop.trim().isNotEmpty) {
                          if (edited != null) {
                            cardList[edited] = ModelClass(
                                title: titleop,
                                description: descriptionop,
                                date: dateop);
                          }
                        // } else if (descriptionop.isEmpty &&
                        //     titleop.isEmpty &&
                        //     dateop.isEmpty) {
                        //   return;
                        } else {
                          cardList.add(ModelClass(
                              title: titleop,
                              description: descriptionop,
                              date: dateop));
                        }
                      });
                    },
                    child: Text(
                      "Submit",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
        });
  }

  var colorList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  List<ModelClass> cardList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        title: Text(
          "Todo App",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w900,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: cardList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(top: 5),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: colorList[index % colorList.length],
                boxShadow: const [
                  BoxShadow(offset: Offset(10, 10), blurRadius: 10),
                ]),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSDtqh9TWFjnlbA-3VeMm2LCq30aeIHv4UysWHyBWEKg&s",
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(cardList[index].title),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: Text(
                                    cardList[index].description.toString()),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Row2
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(cardList[index].date),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              titleController.clear();
                              descriptionController.clear();
                              dateController.clear();
                              showBottomSheetDemo(edited: index);
                            },
                            child: const Icon(
                              Icons.edit_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                cardList.removeAt(index);
                              });
                            },
                            child: const Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: Container(
        height: 50,
        width: 360,
        child: FloatingActionButton(
          onPressed: () {
            titleController.clear();
            descriptionController.clear();
            dateController.clear();
            showBottomSheetDemo();
          },
          backgroundColor: Color.fromRGBO(2, 167, 177, 1),
          tooltip: "This Will Lead to bottomsheet!",
          // foregroundColor: Colors.red, not changed.
          // focusColor: Colors.red, same
          // hoverColor: Colors.amber, same
          splashColor: Colors
              .blue, //which will change the color when we click on button.
          hoverElevation: 500,
          child: Text(
            "Add",
            style: GoogleFonts.quicksand(
                fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          //no change.
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(3, -3),
                blurRadius: 2,
                blurStyle: BlurStyle.outer),
          ],
        ),
      ),
    );
  }
}
