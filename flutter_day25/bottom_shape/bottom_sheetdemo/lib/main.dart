import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomSheetDemo(),
    );
  }
}

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});

  @override
  State createState() {
    return _BottomSheetDemoState();
  }
}

class _BottomSheetDemoState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Demo")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Column(
                  children: [
                    Container(
                      width: double.infinity,
                    ),
                    const Text("Demo"),
                  ],
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
