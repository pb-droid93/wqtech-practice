import 'package:flutter/material.dart';
import 'package:practice/screen_routing.dart';
import 'package:practice/widgets/app_bar.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: "Into Page",
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'welcome to intro page',
                style: TextStyle(fontSize: 20, color: Colors.teal),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenRouting()));
                  },
                  child: const Text('next page'))
            ],
          ),
        ),
      ),
    );
  }
}
