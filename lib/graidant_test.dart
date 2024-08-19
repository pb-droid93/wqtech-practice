import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class GradientUse extends StatelessWidget {
  const GradientUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: "Gradient",
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color(0xffffecd2),
                  Color(0xfffcb69f),
                ],
                center: Alignment.center,
              ),
              //  LinearGradient(
              //   colors: [
              //     Color(0xffffecd2),
              //     Color(0xfffcb69f),
              //   ],
              //   begin: FractionalOffset(1.0, 0.5),
              //   end: FractionalOffset(0.0, 0.5),
              //   //stops: [0.5, 0.1],
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
