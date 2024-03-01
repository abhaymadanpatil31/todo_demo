// //some imp keyword-tf-TextField,
// import "package:flutter/material.dart";
// import "package:google_fonts/google_fonts.dart";
// import "package:intl/intl.dart";

// class todoLogic extends StatefulWidget {
//   const todoLogic({super.key});

//   @override
//   State createState() {
//     return _todoLogicState();
//   }
// }

// class TodoModelClass {
//   String title;
//   String description;
//   String date;
//   TodoModelClass(
//       {required this.title, required this.description, required this.date});
// }

// class _todoLogicState extends State {
//   TextEditingController titleController = TextEditingController();
//   TextEditingController descriptionController = TextEditingController();
//   TextEditingController dateController = TextEditingController();

//   List<TodoModelClass> cardList = [
//     TodoModelClass(title: "Title", description: "Decription", date: "Date"),
//     TodoModelClass(title: "Title1", description: "Decription2", date: "Date2"),
//     TodoModelClass(title: "Title3", description: "Decription3", date: "Date3"),
//     TodoModelClass(title: "Title4", description: "Decription4", date: "Date4"),
//   ];
//   List<Color> colorList = [
//     Colors.red,
//     Colors.blue,
//     Colors.brown,
//     Colors.yellow,
//     Colors.black,
//     Colors.orange,
//     Colors.pink,
//   ];

//   void showBottomSheetDemo() {
//     showModalBottomSheet(
//       //shape will change curve of edges and will looks more attractive. where Inside RoundedrectangleBorder have 2 parameters first one is side and second one is borderRadius

//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(
//               35.0), //it will show none as by default parameter but you have to write it without intelicense.that one is circular.
//           topRight: Radius.circular(35.0),
//         ),
//       ),
//       isScrollControlled: true,
//       isDismissible: true,
//       context: context,

//       builder: (BuildContext context) {
//         return Padding(
//           padding: EdgeInsets.only(
//             left: 20,
//             right: 20,
//             bottom: MediaQuery.of(context).viewInsets.bottom,
//           ),
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "Create Task",
//                 style: GoogleFonts.quicksand(
//                   fontWeight: FontWeight.w700,
//                   fontSize: 20,
//                 ),
//               ),
//               const SizedBox(
//                 height: 12,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     "Title",
//                     style: GoogleFonts.quicksand(
//                       color: const Color.fromRGBO(0, 139, 148, 1),
//                       fontWeight: FontWeight.w400,
//                       fontSize: 15,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextField(
//                     controller: titleController,
//                     decoration: InputDecoration(
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20),
//                         borderSide: const BorderSide(
//                           color: Color.fromRGBO(0, 139, 148, 1),
//                         ),
//                       ),
//                       border: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           color: Color.fromRGBO(0, 139, 148, 1),
//                         ),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "Description",
//                     style: GoogleFonts.quicksand(
//                       color: const Color.fromRGBO(0, 139, 148, 1),
//                       fontWeight: FontWeight.w400,
//                       fontSize: 15,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextField(
//                     //controller is responsible for writting any data on the tf.if you give same controller to all tf then same data will be written on respective tf.
//                     controller: descriptionController,
//                     decoration: InputDecoration(
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20),
//                         borderSide: const BorderSide(
//                           color: Color.fromRGBO(0, 139, 148, 1),
//                         ),
//                       ),
//                       border: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           color: Color.fromRGBO(0, 139, 148, 1),
//                         ),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "Date",
//                     style: GoogleFonts.quicksand(
//                       color: const Color.fromRGBO(0, 139, 148, 1),
//                       fontWeight: FontWeight.w400,
//                       fontSize: 15,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextField(
//                       readOnly: true, //due to this keyboard will be disabled.
//                       controller: dateController,
//                       decoration: InputDecoration(
//                         suffixIcon: const Icon(Icons.date_range_outlined),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20),
//                           borderSide: const BorderSide(
//                             color: Color.fromRGBO(0, 139, 148, 1),
//                           ),
//                         ),
//                         border: OutlineInputBorder(
//                           borderSide: const BorderSide(
//                             color: Color.fromRGBO(0, 139, 148, 1),
//                           ),
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                       onTap: () async {
//                         DateTime? pickDate = await showDatePicker(
//                           context: context,
//                           initialDate: DateTime.now(),
//                           firstDate: DateTime(2024),
//                           lastDate: DateTime(2025),
//                         );
//                         String formatedDate =
//                             DateFormat.yMMMd().format(pickDate!);
//                         setState(() {
//                           dateController.text = formatedDate;
//                         });
//                       }),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 height: 50,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
//                   ),
//                   onPressed: () {
//                     // doedit? submit(doedit,toDoModelobj):
//                   },
//                   child: Container(),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Todo App",
//           style: GoogleFonts.quicksand(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: cardList.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             height: 100,
//             width: 100,
//             color: colorList[index],
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(7.0),
//                       child: Container(
//                         padding: const EdgeInsets.all(
//                             3), //nothing happens to container.it may happen to container if inside that container anything else.
//                         height: 70,
//                         width: 70,
//                         color: Colors.pink,
//                         child: Image.asset(
//                           "assets/Images/pic.jpeg",
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 100,
//                     ),
//                     Column(
//                       // mainAxisAlignment: MainAxisAlignment.start,

//                       children: [
//                         Text(
//                           cardList[index].title,
//                           style: GoogleFonts.quicksand(
//                               fontSize: 15, fontWeight: FontWeight.w700),
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           cardList[index].description,
//                           style: GoogleFonts.quicksand(
//                               fontSize: 15, fontWeight: FontWeight.w700),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
//         onPressed: () {
//           showBottomSheetDemo();
//         },
//         child: const Icon(
//           Icons.next_plan,
//           size: 20,
//         ),
//       ),
//     );
//   }
// }

import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:google_fonts/google_fonts.dart";
import "package:intl/intl.dart";
import "todoModelClass.dart";

class todoLogic extends StatefulWidget {
  const todoLogic({super.key});

  @override
  State createState() => _todoLogicState();
}

class _todoLogicState extends State {
  ///TEXT EDITING CONTROLLERS
  TextEditingController dateController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void bottomSheetDemo(bool doedit, [todoModelClass? todoModelObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
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

              ///TO AVOID THE KEYBOARD OVERLAP THE SCREEN
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "CreateTask",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 12,
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
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: descriptionController,
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
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: dateController,
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
                      onTap: () async {
                        DateTime? pickDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025),
                        );
                        String formatedDate =
                            DateFormat.yMMMd().format(pickDate!);
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
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                    ),
                    onPressed: () {
                      doedit ? submit(doedit, todoModelObj) : submit(doedit);
                      Navigator.of(context).pop();
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
  List<todoModelClass> todoList = [
    todoModelClass(
      title: "Arrange Meeting ",
      description: "Meet the backend team ",
      date: "10 July 2023",
    ),
  ]; //can be addded at runtime
  void submit(bool doedit, [todoModelClass? toDoModelObj]) {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (!doedit) {
        setState(() {
          todoList.add(
            todoModelClass(
              title: titleController.text.trim(),
              description: descriptionController.text.trim(),
              date: dateController.text.trim(),
            ),
          );
        });
      } else {
        setState(() {
          toDoModelObj!.date = dateController.text.trim();
          toDoModelObj.title = titleController.text.trim();
          toDoModelObj.description = descriptionController.text.trim();
        });
      }
    }

    ///TO CLEAR ALL THE TEXT EDITING CONTROLLERS
    void clearController() {
      titleController.clear();
      descriptionController.clear();
      dateController.clear();
    }

    clearController();
  }

  void removeTasks(todoModelClass todoModelObj) {
    setState(() {
      todoList.remove(todoModelObj);
    });
  }

  void editTask(todoModelClass todoModelObj) {
    //ASSIGN THE TEXT EDITING CONTROLLERS WITH THE TEXT VALUES AND
    //THEN OPEN THE BOTTOM SHEET

    titleController.text = todoModelObj.title;
    descriptionController.text = todoModelObj.description;
    dateController.text = todoModelObj.date;
    bottomSheetDemo(true, todoModelObj);
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    descriptionController.dispose();
    dateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        centerTitle: true,
        title: Text(
          "Todo App",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 16,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: colorList[index % colorList.length],
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 10),
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 10,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "assets/Images/pic.jpeg",
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  todoList[index].title,
                                  style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  todoList[index].description,
                                  style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: const Color.fromRGBO(84, 84, 84, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            Text(
                              todoList[index].date,
                              style: GoogleFonts.quicksand(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(132, 132, 132, 1),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    editTask(todoList[index]);
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
                                    removeTasks(todoList[index]);
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
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        onPressed: () {
          clearController();
        },
      ),
    );
  }
}
