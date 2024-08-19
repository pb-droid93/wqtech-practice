import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class StateFulTest extends StatefulWidget {
  const StateFulTest({super.key});

  @override
  State<StateFulTest> createState() => _StateFulTestState();
}

class _StateFulTestState extends State<StateFulTest> {
  var color = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(titleText: 'Stateful Test'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: color,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    color = Colors.orange;
                    setState(() {});
                  },
                  child: const Text(
                    'click to color change',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
