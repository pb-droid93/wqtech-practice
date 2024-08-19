import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PAddingMArgin extends StatelessWidget {
  const PAddingMArgin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Margin'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.blueGrey,
              margin: const EdgeInsets.all(16),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Hello world",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 200,
              width: 150,
              child: Text("flutter"),
            )
          ],
        ),
      ),
    );
  }
}
