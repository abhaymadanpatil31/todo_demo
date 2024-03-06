// import "package:flutter/material.dart";

// void main() => runApp(const MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State createState() {
//     return _MyAppState();
//   }
// }

// class _MyAppState extends State {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Demo"),
//         ),
//         body: Column(
//           children: [
//             Text("Hello Core2web"),
//             Scaffold(
//               body: Container(
//                 height: null,
//                 width: null,
//                 color: Colors.amber,
//               ),
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             Scaffold(
//               body: Column(
//                 children: [
//                   Container(
//                     height: 50,
//                     width: 50,
//                     color: Colors.red,
//                   ),
//                 ],
//               ),
//             );
//           },
//           child: Icon(Icons.next_plan_outlined),
//         ),
//       ),
//     );
//   }
// }

//from the above code we conclude that we can write Scaffold as a paramter inside the body but if we run that program then we will get Exception.
///so in simple language i can say that scaffold inside scaffold is sytanxtically good but not logically the reason is scaffold is entire screen and you are trying to hide that screen over the screen.so it is not possible
///another op i have seen is that if you write scaffold inside the floatingactionbutton then no exception were caught but no op is also displayed.
import "package:flutter/material.dart";
import "package:loginpage/loginLogic.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( 
      home: LoginPage(),
    );
  }
}
