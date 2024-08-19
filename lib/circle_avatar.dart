import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleAvtarTest extends StatelessWidget {
  const CircleAvtarTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CircleAvtar'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/image/srifin_plant.png'),
          backgroundColor: Colors.orange,
          minRadius: 50,
          maxRadius: 100,
          child: Text(
            'SRIFIN',
            style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
