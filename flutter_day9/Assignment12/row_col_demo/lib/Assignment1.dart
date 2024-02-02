import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context){

      return Scaffold(
        backgroundColor: Color.fromARGB(121, 177, 211, 219),
        appBar:AppBar(
          backgroundColor: Colors.orange,
          title:const Text(
            "Happy Republic Day!!!",
            style:TextStyle(
              fontSize:20,
            ),
          ),
          centerTitle:true,
        ),

        body: Container(

          decoration: const BoxDecoration(
            gradient:LinearGradient(
              colors: [Colors.orangeAccent,
              Colors.white,
              Colors.greenAccent],
              begin:Alignment.topLeft,
              end:Alignment.bottomRight)
          ),
          width:double.infinity,
          height:double.infinity,

  
              child:Row(
                mainAxisAlignment:MainAxisAlignment.center,
                

                children:[

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin:EdgeInsets.only(top:70,right:5),
                        height:5,
                        width:5,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(80),
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(top: 80, right: 5),
                        height: 500,
                        width: 10,
                        color: Colors.brown,
                      ),

                      
                    ],
                  ),

                  

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                    Container(
                      margin: const EdgeInsets.only(top: 80),
                      height:66.66,
                      width:300,
                      color:Colors.orange,
                    ),
                    
                    Container(
                      height:66.66,
                      width:300,
                      color:Colors.white,

                      child:Image.asset(
                        "assets/Image/ashoka-chakra-7904695_1280.webp",
                      ),
                    ),

                    Container(
                      height:66.66,
                      width:300,
                      color:Colors.green,
                    ),
                    ],
                  )
                  ,

                    

                ],
              ),
            
          ),
        
      );
  }
}