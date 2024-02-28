//some imp keyword-tf-TextField,
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 

class todoLogic extends StatefulWidget {
  const todoLogic({super.key});

  @override
  State createState() {
    return _todoLogicState();
  }
}

class TodoModelClass {
  String title;
  String description;
  String date;
  TodoModelClass(
      {required this.title, required this.description, required this.date});
}

class _todoLogicState extends State {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<TodoModelClass> cardList = [
    TodoModelClass(title: "Title", description: "Decription", date: "Date"),
    TodoModelClass(title: "Title1", description: "Decription2", date: "Date2"),
    TodoModelClass(title: "Title3", description: "Decription3", date: "Date3"),
    TodoModelClass(title: "Title4", description: "Decription4", date: "Date4"),
  ];
  List<Color> colorList = [
    Colors.red,
    Colors.blue,
    Colors.brown,
    Colors.yellow,
    Colors.black,
    Colors.orange,
    Colors.pink,
  ];

  void showBottomSheetDemo() {
    showModalBottomSheet(
      //shape will change curve of edges and will looks more attractive. where Inside RoundedrectangleBorder have 2 parameters first one is side and second one is borderRadius

      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
              35.0), //it will show none as by default parameter but you have to write it without intelicense.that one is circular.
          topRight: Radius.circular(35.0),
        ),
      ),
      isScrollControlled: true,
      isDismissible: true,
      context: context,

      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Create Task",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
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
                    height: 10,
                  ),
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
                    height: 10,
                  ),
                  TextField(
                    //controller is responsible for writting any data on the tf.if you give same controller to all tf then same data will be written on respective tf.
                    controller: descriptionController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
                    height: 10,
                  ),
                  TextField(
                      readOnly: true, //due to this keyboard will be disabled.
                      controller: dateController,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.date_range_outlined),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onTap: () { 
                        DateTime? pickDate = await showDatePicker( 
                          context:context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025),
                        );
                        String formatedDate =  
                        DateFormat.yMMMd().format(pickDate!);
                      } 
                      
                      ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Todo App",
          style: GoogleFonts.quicksand(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: cardList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            width: 100,
            color: colorList[index],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        padding: const EdgeInsets.all(
                            3), //nothing happens to container.it may happen to container if inside that container anything else.
                        height: 70,
                        width: 70,
                        color: Colors.pink,
                        child: Image.asset(
                          "assets/Images/pic.jpeg",
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Text(
                          cardList[index].title,
                          style: GoogleFonts.quicksand(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          cardList[index].description,
                          style: GoogleFonts.quicksand(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      ],
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
          showBottomSheetDemo();
        },
        child: const Icon(
          Icons.next_plan,
          size: 20,
        ),
      ),
    );
  }
}
