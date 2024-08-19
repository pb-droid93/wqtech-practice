import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScrollTest extends StatelessWidget {
  const ScrollTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scrollview"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('hello world'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: 200,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: 200,
                        color: Colors.yellow,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: 200,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
