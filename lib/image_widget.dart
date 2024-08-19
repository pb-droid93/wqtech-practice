import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageTest extends StatelessWidget {
  const ImageTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Widget'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('assets/image/logo.jpeg'),
              ),
              Container(
                width: 150,
                height: 150,
                child: Image.asset('assets/image/srifin_plant.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
