import 'package:flutter/material.dart';

class RichTextTest extends StatelessWidget {
  const RichTextTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Rich Text",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: RichText(
          text: const TextSpan(
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w800, fontSize: 20),
            children: [
              TextSpan(text: "hello"),
              TextSpan(
                  text: " world ! ",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 30)),
              TextSpan(
                  text: "Welcome to Flutter",
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'FontMain')),
              WidgetSpan(
                  child: Icon(
                Icons.star,
                color: Colors.yellow,
              ))
            ],
          ),
        ),
        // Row(
        //   children: [
        //     Text(
        //       "Hello",
        //       style: TextStyle(color: Colors.grey, fontSize: 16),
        //     ),
        //     Text(
        //       "World !",
        //       style: TextStyle(
        //         color: Colors.blue,
        //         fontSize: 20,
        //         fontWeight: FontWeight.w800,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
