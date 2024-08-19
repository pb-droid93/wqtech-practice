import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class RippleEffect extends StatefulWidget {
  const RippleEffect({super.key});

  @override
  State<RippleEffect> createState() => RippleEffectState();
}

class RippleEffectState extends State<RippleEffect>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    animation = Tween(begin: 0.0, end: 1.0).animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }

  var radious = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'Ripple Effect',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: radious
                .map((value) => Container(
                      width: value * animation.value,
                      height: value * animation.value,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              Colors.blue.withOpacity(1.0 - animation.value)),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
