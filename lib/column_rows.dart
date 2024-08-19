import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Row"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: 300,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text("c", style: TextStyle(fontSize: 20)),
                      const Text("c", style: TextStyle(fontSize: 20)),
                      const Text("c", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  const Text(
                    "R1",
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text("R2", style: TextStyle(fontSize: 20)),
                  const Text("R3", style: TextStyle(fontSize: 20)),
                  const Text("R4", style: TextStyle(fontSize: 20)),
                  const Text("R5", style: TextStyle(fontSize: 20)),
                ],
              ),
              //for align multiple widget
              const Text(
                "A",
                style: TextStyle(fontSize: 20),
              ),
              const Text("B", style: TextStyle(fontSize: 20)),
              const Text("C", style: TextStyle(fontSize: 20)),
              const Text("D", style: TextStyle(fontSize: 20)),
              const Text("E", style: TextStyle(fontSize: 20)),
              ElevatedButton(
                onPressed: () {
                  print("hii");
                },
                child: Text('data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
