import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  var count = 0;

  void counterIncrease() {
    count = count + 1;
    setState(() {});
  }

  void counterDecrease() {
    count = count - 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild :: rebuild");

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'Counter App',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'count :: $count',
                style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        counterIncrease();
                      },
                      icon: const Icon(
                        Icons.add_rounded,
                        color: Colors.green,
                        size: 30,
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      onPressed: () {
                        counterDecrease();
                      },
                      icon: const Icon(
                        Icons.remove_circle_outlined,
                        color: Colors.red,
                        size: 30,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
