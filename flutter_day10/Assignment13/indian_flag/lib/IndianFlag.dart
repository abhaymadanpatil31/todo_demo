import "package:flutter/material.dart";

class IndianFlag extends StatefulWidget {
  const IndianFlag({super.key});

  @override
  State<IndianFlag> createState() => _IndianFlagState();
}

class _IndianFlagState extends State<IndianFlag> {
  int counter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Indian flag",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Text("Add"),
      ),
      body: Container( 
        color:Colors.grey,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            (counter>=0)
            ? Container( 
              height: 500,
              width:20,
              color:Colors.black,
            )
            :Container(),
            Column( 
              children: [ 
                (counter>=1)
                ? Container( 
                  height: 80,
                  width: 250,
                  color:Colors.orange,
                )
                :Container(),

                (counter>=2)
                ? Container( 
                  height: 80,
                  width: 250,
                  color:Colors.white,
                  child:(counter>=3)
                  ? Image.network(
                    "https://t3.ftcdn.net/jpg/03/11/13/46/360_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg",

                  )
                  :Container(),
                )
                :Container(),
                (counter>=4) 
                ? Container( 
                  height: 80,
                  width: 250,
                  color:Colors.green,
                )
                :Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
