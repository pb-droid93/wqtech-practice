import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class ClipRRectWidget extends StatelessWidget {
  const ClipRRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'ClipRRect',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/image/bg.jpg',
              height: 200,
              width: 350,
              fit: BoxFit.cover,
            ),
            // Container(
            //   color: Colors.grey,
            //   width: 200,
            //   height: 200,
            // ),
          ),
        ),
      ),
    );
  }
}
