import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class BMIForm extends StatefulWidget {
  const BMIForm({super.key});

  @override
  State<BMIForm> createState() => _BMIFormState();
}

class _BMIFormState extends State<BMIForm> {
  var weightcontroller = TextEditingController();

  var feetcontroller = TextEditingController();

  var inchController = TextEditingController();

  var result = "";
  var bgColor = Colors.blueGrey.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'BMI App',
        ),
      ),
      body: SafeArea(
        child: Container(
          color: bgColor,
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'BMI',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: weightcontroller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        label: Text('Enter your weight in kg.'),
                        prefixIcon: Icon(Icons.line_weight)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: feetcontroller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        label: Text('Enter your height  feet'),
                        prefixIcon: Icon(Icons.height)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: inchController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        label: Text('Enter your height inch'),
                        prefixIcon: Icon(Icons.height_sharp)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        var weight = weightcontroller.text.toString();
                        var feet = feetcontroller.text.toString();
                        var inch = inchController.text.toString();

                        if (weight != "" && feet != "" && inch != "") {
                          //bmi calculation
                          var w = int.parse(weight);
                          var f = int.parse(feet);
                          var i = int.parse(inch);
                          var totalInch = (f * 12) + i;
                          var cm = totalInch * 2.54;
                          var tm = cm / 100;
                          var bmi = w / (tm * tm);
                          var msg = "";
                          if (bmi > 25) {
                            msg = "you are over weight 111";
                            bgColor = Colors.orange.shade200;
                          } else if (bmi < 18) {
                            msg = "You are under weight !!!";
                            bgColor = Colors.red.shade300;
                          } else {
                            msg = "You are healthy";
                            bgColor = Colors.green.shade300;
                          }
                          result =
                              '$msg \n Your BMI is : ${bmi.toStringAsFixed(3)}';
                        } else {
                          result = 'Please fill all the required fields !!';
                        }
                        setState(() {});
                      },
                      child: const Text('calculate')),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    result,
                    style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        fontFamily: "FontMain"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
