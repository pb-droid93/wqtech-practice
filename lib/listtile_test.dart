import 'package:flutter/material.dart';

class ListTileTest extends StatelessWidget {
  const ListTileTest({super.key});

  @override
  Widget build(BuildContext context) {
    var arrName = ['Raman', 'Ramu', 'Manu', 'Rahul', 'Sachin'];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'List Tile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: arrName.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                child: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
              ),
              title: Text(arrName[index].toString()),
              subtitle: Text('Hi i am ${arrName[index]}'),
              trailing: const CircleAvatar(
                  child: Icon(
                Icons.add,
                color: Colors.green,
              )),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(thickness: 2);
          },
        ),
      ),
    );
  }
}
