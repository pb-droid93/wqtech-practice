import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice/widgets/app_bar.dart';

class FontAwesomeIconTest extends StatelessWidget {
  const FontAwesomeIconTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(titleText: 'Font Awesome'),
      ),
      body: SafeArea(
          child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.apple,
            size: 50,
            color: Colors.red,
          ),
          FaIcon(
            FontAwesomeIcons.googlePay,
            size: 50,
            color: Colors.blue,
          ),
        ],
      )),
    );
  }
}
