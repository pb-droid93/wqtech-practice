import 'package:flutter/material.dart';

class SizeBoxWidget extends StatelessWidget {
  const SizeBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'SizeBox',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox.square(
                dimension: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      shape: RoundedRectangleBorder()),
                  child: const Text(
                    'Button',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox.square(
                dimension: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      shape: const RoundedRectangleBorder()),
                  child: const Text(
                    'Button',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox.square(
                dimension: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      shape: RoundedRectangleBorder()),
                  child: const Text(
                    'Button',
                    style: TextStyle(color: Colors.white),
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
