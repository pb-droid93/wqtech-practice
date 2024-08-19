import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/icon_widget.dart';
import 'package:practice/statefull_correctly.dart';
import 'package:practice/widgets/app_bar.dart';

class ScreenRouting extends StatelessWidget {
  const ScreenRouting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'Page Routing',
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              "hello world",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => IconWidgetTest()));
                },
                child: Text('Next'))
          ],
        ),
      ),
    );
  }
}
