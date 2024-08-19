import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stack Widget',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              Container(
                width: 250,
                height: 250,
                color: Colors.blueGrey,
              ),
              Positioned(
                top: 10,
                bottom: 10,
                left: 10,
                right: 10,
                child: Container(
                  width: 220,
                  height: 220,
                  color: Colors.deepPurple,
                ),
              ),
              Positioned(
                top: 20,
                left: 30,
                child: Container(
                  height: 180,
                  width: 180,
                  color: Colors.pink,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
