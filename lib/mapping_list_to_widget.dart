import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';

class ListMapToWidget extends StatelessWidget {
  ListMapToWidget({super.key});

  var listData = [
    {'name': 'Ramu', 'mobile': '9898989890', 'unread': '1'},
    {'name': 'Ramna', 'mobile': '98989234590', 'unread': '2'},
    {'name': 'Rahul', 'mobile': '9898349890', 'unread': '1'},
    {'name': 'Neeraj', 'mobile': '9898989890', 'unread': '2'},
    {'name': 'Randeep', 'mobile': '9898989890', 'unread': '1'},
    {'name': 'Kamal', 'mobile': '9898989890', 'unread': '1'},
    {'name': 'Vikas', 'mobile': '9898989890', 'unread': '1'},
    {'name': 'Vishaal', 'mobile': '9898989890', 'unread': '1'},
    {'name': 'Deepak', 'mobile': '9898989890', 'unread': '1'},
    {'name': 'Vivek', 'mobile': '9899898980', 'unread': '1'},
    {'name': 'Pranav', 'mobile': '6789989890', 'unread': '1'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'List to Widget Mapping',
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: ListView(
            children: listData.map((value) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.account_circle,
                      color: Colors.blue,
                      size: 30,
                    ),
                    title: Text(
                      value['name'].toString(),
                      style: const TextStyle(
                          fontSize: 18,
                          fontFamily: "FontMain",
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      value['mobile'].toString(),
                      style: const TextStyle(fontFamily: "FontMain"),
                    ),
                    trailing: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.green,
                      child: Text(
                        value['unread'].toString(),
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'FontMain'),
                      ),
                    ),
                  )
                  // Container(
                  //   decoration: BoxDecoration(
                  //       color: Colors.blue.shade100,
                  //       borderRadius: BorderRadius.circular(10)),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: Center(child: Text(value)),
                  //   ),
                  // ),
                  );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
