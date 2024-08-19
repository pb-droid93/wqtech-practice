import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/ui_helper/util.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card View'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Card(
          elevation: 16,
          color: Colors.blueGrey,
          shadowColor: Colors.pink,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Raman',
              ),
              subtitle: Text('Hi i am Raman', style: myTextStyle11()),
              trailing: Icon(Icons.add),
            ),
          ),
        ),
      ),
    );
  }
}
