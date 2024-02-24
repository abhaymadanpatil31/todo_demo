import "package:flutter/material.dart";

class LifeCycle extends StatefulWidget {
  const LifeCycle({super.key});

  @override
  State createState() {
    print("Sorry from createState");
    return _LifeCycle();
  }
}

class _LifeCycle extends State {
  // @mustCallSuper
  // void initState() {
  //   super.initState();
  //   print("hello abhay,i am in init state");
  // }

  @override
  Widget build(BuildContext context) {
    print("In build");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LifeCycleDemo",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
