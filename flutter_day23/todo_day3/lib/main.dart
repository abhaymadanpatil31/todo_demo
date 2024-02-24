// import "package:flutter/material.dart";

// void main() {
//   return runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: TextFieldDemo(),
//     );
//   }
// }

// class TextFieldDemo extends StatefulWidget {
//   const TextFieldDemo({super.key});

//   @override
//   State createState() {
//     return _TextFieldDemoState();
//   }
// }

// class _TextFieldDemoState extends State {
//   List ls = [];
//   TextEditingController namecontroller = TextEditingController();
//   TextEditingController obj2 = TextEditingController();
//   TextEditingController obj3 = TextEditingController();

//   String? name;
//   String? loc;
//   String? company;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "TextFieldDemo",
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           TextField(
//             controller: namecontroller,
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(100)),
//               ),
//               hintText: "Enter Your Name",
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           TextField(
//             controller: obj2,
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(100)),
//               ),
//               hintText: "Enter Company Name",
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           TextField(
//             controller: obj3,
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(100)),
//               ),
//               hintText: "Enter Company Location",
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
