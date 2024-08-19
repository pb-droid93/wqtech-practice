import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFont extends StatelessWidget {
  const CustomFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom font'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const SafeArea(
        child: Center(
          child: Text(
            "Hello Flutter Dev",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: 'FontMain'),
          ),
        ),
      ),
    );
  }
}
