import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int index = 0;
  String label = '';
  List<String> imageList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrEOcG2o8CdxJn70uTVamqd6A0W4Cpj5WjFNT2G3Lufw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWpAVGOwpLi2pu8zW-uSLRih4yk0TxkPs92bsPOR8nog&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs17Z6F81kXFfeTBonNZItKxLLoT2rD83J3CmlkT5KCg&s',
    'https://szcdn.ragalahari.com/oct2021/hd/krithi-shetty-vega-sri-gold-diamonds-launch/krithi-shetty-vega-sri-gold-diamonds-launchthumb.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text(
          'ImageApp',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.network(
              imageList[index],
              height: 250,
              width: 250,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            // Next Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  index++;
                  if (index == imageList.length) {
                    index = imageList.length - 1;
                    label = 'last image!';
                  }
                });
              },
              child: const Text('Next'),
            ),
            const SizedBox(
              height: 30,
            ),

            // Reset Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  index = 0;
                  label = '';
                });
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}