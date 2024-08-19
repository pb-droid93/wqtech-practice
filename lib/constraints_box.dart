import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class ConstraintsBoxTest extends StatelessWidget {
  const ConstraintsBoxTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'Constraint box',
        ),
      ),
      body: SafeArea(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 200, maxHeight: 100),
          child: const Text(
            "hello world kdfskd nlsndkf sldfl lsdnfl sldfnl.hello world hwllo world dksnf lsdfnkl dslfnkjdsn",
            style: TextStyle(fontSize: 25, color: Colors.teal),
          ),
        ),
      ),
    );
  }
}
