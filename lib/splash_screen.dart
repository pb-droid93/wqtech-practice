import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/animation/ripple_effect.dart';
import 'package:practice/bmi_practice/pages/bmi_form.dart';
import 'package:practice/intro_page.dart';
import 'package:practice/local_data/ui/login_page.dart';
import 'package:practice/passing_data_onepage_to_another.dart';
import 'package:practice/range_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'animation/animated_container.dart';
import 'animation/croos_fade_anim.dart';
import 'animation/hero_anim.dart';
import 'animation/twin_animation.dart';
import 'cliprect_widget.dart';
import 'graidant_test.dart';
import 'listwheel_scrollview.dart';
import 'local_data/ui/sharepref_test.dart';
import 'mapping_list_to_widget.dart';
import 'opacity_test.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({super.key});

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

//its changing the state so we are using stateless
class _SplasScreenState extends State<SplasScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      //pushReplacement() is for replace the current page and remove from stack

      gotoPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Center(
          child: Text(
            "Classico",
            style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w600,
                fontFamily: "FontMain"),
          ),
        ),
      ),
    );
  }

  gotoPage() async {
    var sPref = await SharedPreferences.getInstance();
    bool? isLogin = sPref.getBool('login');
    if (isLogin != null && isLogin) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const BMIForm()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    }
  }
}
