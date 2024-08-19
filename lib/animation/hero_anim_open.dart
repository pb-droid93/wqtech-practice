import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'DetailsPage',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Hero(
              tag: 'logo',
              child: Image.asset('assets/image/logo.jpeg'),
            ),
          ),
        ),
      ),
    );
  }
}
