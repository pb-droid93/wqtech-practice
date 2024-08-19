import 'package:flutter/material.dart';
import 'package:practice/ui_helper/util.dart';

class StyleThemes extends StatelessWidget {
  const StyleThemes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('theme style'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello world",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Hello world",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            "Hello world",
            style: myTextStyle11(),
          ),
          Text(
            "Hello Flutter Dev",
            style:
                myTextStyle11(txtColor: Colors.red, txtStyle: FontStyle.normal),
          )
        ],
      ),
    );
  }
}
