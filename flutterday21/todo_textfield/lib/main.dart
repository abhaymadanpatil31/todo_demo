import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextFieldDemo(),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});
  @override
  State createState() {
    print("Hello Abhay,In Create State of StatefulWidget");
    return _TextFieldDemo();
  }
}

class _TextFieldDemo extends State {
  @mustCallSuper
  void didChangeDependcies() {
    print("Hello Abhay,In did chagedependcies");
  }

  @mustCallSuper
  void initState() {
    super.initState();
    print("Hello Abhay,In Init State");
  }

  @mustCallSuper
  void deactivate() {
    super.deactivate();
    print("Hello Abhay,In deactivate");
  }

  @protected
  @mustCallSuper
  void dispose() {
    super.dispose();
    print("Hello Abhay,In dispose!");
  }

  @override
  Widget build(BuildContext context) {
    print("Hello Abhay,In build of state");
    return Scaffold(
      appBar: AppBar(
        title: const Text("LifeCycle"),
      ),
    );
  }
}
