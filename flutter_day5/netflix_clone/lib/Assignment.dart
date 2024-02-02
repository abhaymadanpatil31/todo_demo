import "package:flutter/material.dart";

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Netflix",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Text(
              "Movies",
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ClipRRect(
                    child: Image.network(
                      //BorderRadius:BorderRadius.circular(15),
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",

                      height: 300,
                      width: 200,
                      //fit: BoxFit.fill,
                    ),
                  ),
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    height: 300,
                    width: 200,
                  ),
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    height: 300,
                    width: 200,
                  ),
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    height: 300,
                    width: 200,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              "Series",
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ClipRRect(
                    child: Image.network(
                      "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                      height: 300,
                      width: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Image.network(
                    "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                    height: 300,
                    width: 200,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                    height: 300,
                    width: 200,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Text("Most Popolar"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ClipRect(
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                      height: 300,
                      width: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                    height: 300,
                    width: 200,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
                    height: 300,
                    width: 200,
                  ),
                  // Image.network(
                  //   "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                  //   height: 200,
                  //   width: 100,
                  // ),
                  /*const SizedBox(
                    width: 20,
                  ),*/
                  ClipRect(
                    child: Image.network(
                      "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                      height: 300,
                      width: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  // Image.network(
                  //   "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                  //   height: 200,
                  //   width: 100,
                  // ),
                  // Image.network(
                  //   "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                  //   height: 200,
                  //   width: 100,
                  // ),
                  // Image.network(
                  //   "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                  //   height: 200,
                  //   width: 100,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
