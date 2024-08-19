import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonTest extends StatelessWidget {
  const ButtonTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  debugPrint("Click Here");
                },
                child: const Text("textbutton"),
              ),
              ElevatedButton(
                onPressed: () {
                  print("in elevated button pressed");
                },
                child: const Text("Elevated Button"),
              ),
              OutlinedButton(
                onPressed: () {
                  print("in out lined button");
                },
                child: const Text("OutLined Button"),
              ),
              IconButton(
                  onPressed: () {
                    print("icon button");
                  },
                  icon: Icon(CupertinoIcons.airplane)),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(CupertinoIcons.cube),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
