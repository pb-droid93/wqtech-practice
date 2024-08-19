import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class StateFulCorrectalyUse extends StatefulWidget {
  const StateFulCorrectalyUse({super.key});
  @override
  State<StateFulCorrectalyUse> createState() => _StateFulCorrectalyUse();
}

class _StateFulCorrectalyUse extends State<StateFulCorrectalyUse> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    no1Controller.dispose();
    no2Controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: "Stateful Testing",
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: no1Controller,
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: no2Controller,
                  keyboardType: TextInputType.number,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());
                            setState(() {
                              result = no1 + no2;
                            });
                          },
                          child: const Text('Add')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());
                            setState(() {
                              result = no1 - no2;
                            });
                          },
                          child: const Text('Sub')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());
                            setState(() {
                              result = no1 * no2;
                            });
                          },
                          child: const Text('Multiply')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());
                            setState(() {
                              result = no1 / no2;
                            });
                          },
                          child: const Text("Divide")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Result : $result',
                    style:
                        const TextStyle(color: Colors.blueGrey, fontSize: 25),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
