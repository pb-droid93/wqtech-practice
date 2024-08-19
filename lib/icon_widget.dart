import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice/login_form.dart';

class IconWidgetTest extends StatelessWidget {
  const IconWidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'icon Widget',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginForm()));
                },
                child: Icon(
                  Icons.house,
                  color: Colors.teal,
                  size: 50,
                ),
              ),
              Icon(
                Icons.safety_check,
                color: Colors.yellow,
                size: 50,
              ),
              Icon(
                Icons.watch,
                color: Colors.green,
                size: 50,
              ),
              FaIcon(
                FontAwesomeIcons.hockeyPuck,
                size: 50,
              ),
              FaIcon(
                FontAwesomeIcons.amazon,
                color: Colors.orange,
                size: 50,
              ),
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
          ),
        ),
      ),
    );
  }
}
