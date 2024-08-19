import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class TwinAnimationTest extends StatefulWidget {
  const TwinAnimationTest({super.key});

  @override
  State<TwinAnimationTest> createState() => _TwinAnimationState();
}

class _TwinAnimationState extends State<TwinAnimationTest>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnimation;

  @override
  void initState() {
    //first method will load when when state build
    // TODO: implement initState
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    animation = Tween(begin: 0.0, end: 200.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.grey)
        .animate(animationController);
    animationController.addListener(() {
      print(animation.value);
      setState(() {});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'Twin Animation',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: animation.value,
            height: animation.value,
            color: colorAnimation.value,
          ),
        ),
      ),
    );
  }
}
