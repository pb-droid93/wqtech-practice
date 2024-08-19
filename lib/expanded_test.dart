import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandedTest extends StatelessWidget {
  const ExpandedTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Widget"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: 100,
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),
            Expanded(
                child: Container(
              height: 100,
              color: Colors.pink,
            ))
          ],
        ),
      ),
    );
  }
}
