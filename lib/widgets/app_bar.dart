import 'package:flutter/material.dart';

class AppBarTest extends StatelessWidget {
  final String titleText;
  const AppBarTest({
    required this.titleText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titleText,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blueGrey,
      centerTitle: true,
    );
  }
}
