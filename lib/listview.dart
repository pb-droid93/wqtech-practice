import 'package:flutter/material.dart';

class ListViewTest extends StatelessWidget {
  const ListViewTest({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'ram',
      'ajay',
      'neeraj',
      'dilip',
      'david',
      'sachin',
      'rahul',
      'rohir',
      'virat',
      'rahul'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: arrNames.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(arrNames[index].toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                color: Colors.green,
                                fontWeight: FontWeight.w600)),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('akskdnkasndk',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(arrNames[index].toUpperCase(),
                        style: const TextStyle(
                            fontSize: 21,
                            color: Colors.green,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 100,
              thickness: 2,
            );
          },
        ),
        // child: ListView(
        //   scrollDirection: Axis.vertical,
        //   reverse: true,
        //   children: const [
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //         '1',
        //         style: TextStyle(
        //             fontSize: 20,
        //             color: Colors.green,
        //             fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //         '2',
        //         style: TextStyle(
        //             fontSize: 20,
        //             color: Colors.green,
        //             fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //         '3',
        //         style: TextStyle(
        //             fontSize: 20,
        //             color: Colors.green,
        //             fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //         '4',
        //         style: TextStyle(
        //             fontSize: 20,
        //             color: Colors.green,
        //             fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //         '5',
        //         style: TextStyle(
        //             fontSize: 20,
        //             color: Colors.green,
        //             fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //         '6',
        //         style: TextStyle(
        //             fontSize: 20,
        //             color: Colors.green,
        //             fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //         '7',
        //         style: TextStyle(
        //             fontSize: 20,
        //             color: Colors.green,
        //             fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
