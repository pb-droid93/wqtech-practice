import 'package:flutter/material.dart';

class GridViewTest extends StatelessWidget {
  GridViewTest({super.key});

  var arrColor = [
    Colors.red,
    Colors.pink,
    Colors.yellow,
    Colors.blueGrey,
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.lime,
    Colors.teal
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: arrColor.length,
          itemBuilder: (context, index) {
            return Container(
              color: arrColor[index],
            );
          },
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100, crossAxisSpacing: 8, mainAxisSpacing: 8),
        ),

        // child: Column(
        //   children: [
        //     Container(
        //       height: 300,
        //       child: GridView.count(
        //         crossAxisCount: 4,
        //         crossAxisSpacing: 8, //fro column space
        //         mainAxisSpacing: 8, //for row spacing
        //         children: [
        //           Container(
        //             color: arrColor[0],
        //           ),
        //           Container(
        //             color: arrColor[1],
        //           ),
        //           Container(
        //             color: arrColor[2],
        //           ),
        //           Container(
        //             color: arrColor[3],
        //           ),
        //           Container(
        //             color: arrColor[4],
        //           ),
        //           Container(
        //             color: arrColor[5],
        //           ),
        //           Container(
        //             color: arrColor[6],
        //           ),
        //           Container(
        //             color: arrColor[7],
        //           ),
        //           Container(
        //             color: arrColor[8],
        //           )
        //         ],
        //       ),
        //     ),
        //     const SizedBox(
        //       height: 20,
        //     ),
        //     Container(
        //       height: 300,
        //       child: GridView.extent(
        //         reverse: true,
        //         crossAxisSpacing: 8,
        //         mainAxisSpacing: 8,
        //         maxCrossAxisExtent: 100,
        //         children: [
        //           Container(
        //             color: arrColor[0],
        //           ),
        //           Container(
        //             color: arrColor[1],
        //           ),
        //           Container(
        //             color: arrColor[2],
        //           ),
        //           Container(
        //             color: arrColor[3],
        //           ),
        //           Container(
        //             color: arrColor[4],
        //           ),
        //           Container(
        //             color: arrColor[5],
        //           ),
        //           Container(
        //             color: arrColor[6],
        //           ),
        //           Container(
        //             color: arrColor[7],
        //           ),
        //           Container(
        //             color: arrColor[8],
        //           )
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
