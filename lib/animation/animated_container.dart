import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class AnimatedContainerTest extends StatefulWidget {
  const AnimatedContainerTest({super.key});

  @override
  State<AnimatedContainerTest> createState() => _AnimatedContainerTestState();
}

class _AnimatedContainerTestState extends State<AnimatedContainerTest> {
  double cWidth = 200;
  double cHeight = 150;
  bool flag = true;
  Color bgColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: "Foo Animation",
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: cWidth,
                height: cHeight,
                color: bgColor,
                curve: Curves.bounceIn,
                duration: const Duration(seconds: 2),
              ),
              const SizedBox(
                height: 20,
              ),
              AnimatedContainer(
                width: cWidth,
                height: cHeight,
                color: bgColor,
                curve: Curves.bounceOut,
                duration: const Duration(seconds: 2),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (flag) {
                    cWidth = 150;
                    cHeight = 200;
                    bgColor = Colors.orange;
                    flag = false;
                  } else {
                    cWidth = 200;
                    cHeight = 150;
                    bgColor = Colors.blue;
                    flag = true;
                  }
                  setState(() {});
                },
                child: const Text('Animate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
