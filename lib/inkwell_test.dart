import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InkwellTest extends StatelessWidget {
  const InkwellTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INKWELl WIdGIT'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  print('on tap');
                },
                onDoubleTap: () {
                  print('on double tap');
                },
                onLongPress: () {
                  print('long pressed');
                },
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        print('text clicked');
                      },
                      child: Text(
                        'Click ME',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
