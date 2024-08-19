import 'dart:async';
import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class CrossFadeAnim extends StatefulWidget {
  const CrossFadeAnim({super.key});

  @override
  State<CrossFadeAnim> createState() => _CrossFadeAnimState();
}

class _CrossFadeAnimState extends State<CrossFadeAnim> {
  bool isFirst = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Timer(const Duration(seconds: 4), () {
    //   reload();
    // });
  }

  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: "Cross Fade Anim",
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                duration: const Duration(seconds: 3),
                firstCurve: Curves.easeInCirc,
                secondCurve: Curves.bounceIn,
                firstChild: Container(
                  height: 200,
                  width: 200,
                  color: Colors.orange,
                ),
                secondChild: Image.asset(
                  'assets/image/srifin_plant.png',
                  width: 200,
                  height: 200,
                ),
                crossFadeState: isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    reload();
                  },
                  child: Text('Cross Fade Anim'))
            ],
          ),
        ),
      ),
    );
  }
}
