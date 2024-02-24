// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       home: Demo(),
// //     );
// //   }
// // }

// // class Demo extends StatefulWidget {
// //   const Demo({super.key});

// //   @override
// //   State createState() {
// //     return _Demo();
// //   }
// // }

// // class _Demo extends State {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Application"),
// //         centerTitle: true,
// //       ),
// //       body: SizedBox(

// //         height: double.infinity,
// //         width: double.infinity,
// //         child: Column(
// //           children: [
// //             const Center(
// //               heightFactor: 10,
// //             ),
// //             Row(
// //               children: [
// //                 const SizedBox(
// //                   width: 50,
// //                   height: 50,
// //                 ),
// //                 Image.network(
// //                   "https://cdn2.hubspot.net/hubfs/53/image8-2.jpg",
// //                   height: 700,
// //                   width: 200,
// //                 ),
// //                 Image.asset(
// //                   "assets/images/Microsoft.png",
// //                   height: 500,
// //                   width: 200,
// //                 ),
// //                 ElevatedButton(onPressed: () {}, child: const Icon(Icons.face)),
// //                 IconButton(
// //                   iconSize: 72,
// //                   icon: const Icon(Icons.favorite),
// //                   onPressed: () {
// //                     // ...
// //                   },
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {},
// //         child: const Icon(Icons.add),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:widget(),
//     );
//   }
// }

// class widget extends StatefulWidget {
//   const widget({super.key});
//   @override
//   State createState() {
//     return _widget();
//   }
// }

// class _widget extends State<widget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:ListView(
//         shrinkWrap: true,
//         children: [
//           Row(
//             mainAxisAlignment:MainAxisAlignment.center,
//             children: [
//               const Text(),
//             ],
//           ),
//         ],

//       ),
//     );
//   }
// }


import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: widget(),
    );
  }
}

class widget extends StatefulWidget {
  @override
  State createState() {
    return _widget();
  }
}

class _widget extends State<widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.grey,
        title:const Text("Whatsapp",style: TextStyle(fontSize: 20, color: const Color(0xFF00FF00),),
        ),
      ),
      body: ListView( 
        
        children: [ 
          Container( 
            width: 500,
            color : const Color(0xFF36454F),

          ),
        ],
      ),
    );
  }
}
