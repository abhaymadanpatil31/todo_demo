import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Album1 extends StatefulWidget {
  const Album1({super.key});

  @override
  State createState() {
    return _Album1State();
  }
}

class _Album1State extends State {
  List<Image> imgList = [
    Image.network(
        "https://media.licdn.com/dms/image/D4D22AQG-5UZlnEwgkw/feedshare-shrink_800/0/1695727157201?e=2147483647&v=beta&t=PPbtKqs4-ba1J7IaFsBuGpBMu1igmjaQf6ybeWcDGq4"),
    Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmyQNANFGpzIsXo1d7XplacuJ0u_BHe7umxY89-Sp55Q&s"),
  ];

  @override
  Widget build(BuildContext context) {
    print("the list of Image:${imgList.length}");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Album1",
          style: GoogleFonts.quicksand(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(
              children: [
                imgList[0],
              ],
            ),
          );
        },
      ),
    );
  }
}
