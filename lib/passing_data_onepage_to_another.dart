import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/second_page.dart';
import 'package:practice/widgets/app_bar.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var pasTextController = TextEditingController();
  @override
  void dispose() {
    super.dispose();

    pasTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'First Page',
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: pasTextController,
                decoration: InputDecoration(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  String data = pasTextController.text.toString();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SecondPage(passedString: data)));
                },
                child: const Text('Pass Data'))
          ],
        ),
      ),
    );
  }
}
