import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomWidgetSplits extends StatelessWidget {
  const CustomWidgetSplits({super.key});
//used for to make code more readable and making custom widget
  //everything is widget in flutter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Spliting app into Widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          child: const Column(
            children: [
              Text("hello world"),
              Text('Hello flutter dev'),
              Profile(),
              Contacts(),
              Category(),
              BottomNav(),
            ],
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.all(4),
                child: SizedBox(
                  height: 200,
                  child: CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: Colors.pink,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.orange,
                ),
                title: Text('Hi $index'),
                subtitle: Text(" i am $index"),
                trailing: const Icon(Icons.info_outline),
              );
            }),
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.green,
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 4, crossAxisSpacing: 4),
            itemCount: 9,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.teal,
                child: Center(
                    child: Text(
                  "hii i am $index",
                  style: const TextStyle(color: Colors.white),
                )),
              );
            }),
      ),
    );
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.orange,
        padding: const EdgeInsets.all(4),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, mainAxisSpacing: 4, crossAxisSpacing: 4),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.blueGrey,
              );
            }),
      ),
    );
  }
}
