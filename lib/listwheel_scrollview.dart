import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice/widgets/app_bar.dart';

class ListWheelScrollViewTest extends StatelessWidget {
  ListWheelScrollViewTest({super.key});

  final arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'ListWheel (3D List)',
        ),
      ),
      body: SafeArea(
        child: ListWheelScrollView(
          itemExtent: 200,
          children: arrIndex
              .map(
                (value) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const FaIcon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'hi a am  container $value showing the Wheel Scrollview ',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
