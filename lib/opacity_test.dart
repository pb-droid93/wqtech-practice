import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class OpacityTest extends StatefulWidget {
  const OpacityTest({super.key});

  @override
  State<OpacityTest> createState() => _OpacityTestState();
}

class _OpacityTestState extends State<OpacityTest> {
  var opa = 1.0;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'Opacity',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                duration: const Duration(seconds: 3),
                opacity: opa,
                curve: Curves.elasticInOut,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.blue,
                      child: const Text('Hello android'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  if (flag) {
                    opa = 0;
                    flag = false;
                  } else {
                    opa = 1;
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
