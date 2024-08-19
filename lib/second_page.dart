import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class SecondPage extends StatelessWidget {
  final String passedString;
  const SecondPage({required this.passedString, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'SecondPage',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Text(passedString),
        ),
      ),
    );
  }
}
