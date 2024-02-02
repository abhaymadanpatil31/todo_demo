import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp( 
      title:"flutter Demo",
      home:Scaffold(
        appBar:AppBar(
          title:const Text("AppBar"),
        ),
        body: SizedBox(
          height:double.infinity,
          width:double.infinity,
          child:
            Column(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,

             children:[
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:[
                  Container(
                    height:100,
                    width:100,
                    color:Colors.blue,
                  ),
                  Container(
                    height:100,
                    width:100,
                    color:Colors.blue,
                  ),
                   Container(
                    height:100,
                    width:100,
                    color:Colors.blue,
                  ),
                  
                ],
              ),
                    Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:[
                  Container(
                    height:100,
                    width:100,
                    color:Colors.blue,
                  ),
                  Container(
                    height:100,
                    width:100,
                    color:Colors.blue,
                  ),
                   Container(
                    height:100,
                    width:100,
                    color:Colors.blue,
                  ),
                  
                ],
              ),
             ],             
            ),

          
        ),
      ),
    );
  }
}
