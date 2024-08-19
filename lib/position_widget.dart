import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice/widgets/app_bar.dart';

class PositionWidgetTest extends StatelessWidget {
  const PositionWidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'Position widget',
        ),
      ),
      body: SafeArea(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.teal,
          child: Stack(
            children: [
              Positioned(
                top: 1,
                left: 1,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
