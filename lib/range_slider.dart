import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class RangeSliderTest extends StatefulWidget {
  const RangeSliderTest({super.key});

  @override
  State<RangeSliderTest> createState() => _RangeSliderTest();
}

class _RangeSliderTest extends State<RangeSliderTest> {
  RangeValues rangeValues = const RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels rangeLabels =
        RangeLabels(rangeValues.start.toString(), rangeValues.end.toString());

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'Range Slider',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RangeSlider(
              values: rangeValues,
              labels: rangeLabels,
              divisions: 20,
              min: 0,
              max: 100,
              activeColor: Colors.teal,
              inactiveColor: Colors.grey,
              onChanged: (newValue) {
                rangeValues = newValue;
                print('${newValue.start} :: ${newValue.end}');
                setState(() {});
              },
            ),
          ),
        ),
      ),
    );
  }
}
