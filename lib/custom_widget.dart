import 'package:flutter/material.dart';
import 'package:practice/widgets/rounded_button.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Custom widget", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: RoundedButton(
                  title: "Click Me",
                  icon: const Icon(Icons.lock),
                  color: Colors.blue,
                  callBack: () {
                    print("hii clicked");
                  },
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: 100,
                child: RoundedButton(
                  title: "Display",
                  color: Colors.blue,
                  callBack: () {
                    print("hii clicked");
                  },
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: 120,
                child: RoundedButton(
                  title: "Play",
                  icon: const Icon(Icons.play_arrow),
                  color: Colors.blue,
                  callBack: () {
                    print("hii clicked");
                  },
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
