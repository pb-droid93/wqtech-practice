import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

import 'hero_anim_open.dart';

class HeroAnim extends StatefulWidget {
  const HeroAnim({super.key});

  @override
  State<HeroAnim> createState() => _HeroAnimState();
}

class _HeroAnimState extends State<HeroAnim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: "Hero Anim",
        ),
      ),
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (contex) => const DetailPage()));
            },
            child: Hero(
              tag: 'logo',
              child: Image.asset(
                'assets/image/logo.jpeg',
                height: 200,
                width: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
