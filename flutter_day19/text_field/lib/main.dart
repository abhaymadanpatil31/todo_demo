import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Demo",
      home: MyHomePage(title: "Add Names"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String? title;

  @override
  State createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State {
  final TextEditingController _namesTextEditingController =
      TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: _namesTextEditingController,
            focusNode: _nameFocusNode,
            decoration: InputDecoration(
              hintText: "Enter the Name",
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  (5.0),
                  // orderSide: const BorderSide(
                  //   color: Colors.pink,
                  // ),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  (20),
                  // borderSide:const BorderSide(
                  //   color:Colors.blue,
                  // ),
                ),
              ),
            ),
            cursorColor: Colors.amber,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.phone,
            onChanged: (value) {
              print("Value = $value");
            },
            onSubmitted: (value) {
              print("Data Submitted = $value");
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("ADD"),
      ),
    );
  }
}
