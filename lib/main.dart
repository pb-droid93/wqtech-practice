import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/button_widget.dart';
import 'package:practice/card_test.dart';
import 'package:practice/current_date_time.dart';
import 'package:practice/custom_font.dart';
import 'package:practice/expanded_test.dart';
import 'package:practice/grid_view.dart';
import 'package:practice/inkwell_test.dart';
import 'package:practice/intro_page.dart';
import 'package:practice/listtile_test.dart';
import 'package:practice/listview.dart';
import 'package:practice/paddin_margin.dart';
import 'package:practice/position_widget.dart';
import 'package:practice/rich_text.dart';
import 'package:practice/scroll_view.dart';
import 'package:practice/service/timer_service.dart';
import 'package:practice/size_box.dart';
import 'package:practice/splash_screen.dart';
import 'package:practice/split_app_into_widget.dart';
import 'package:practice/stack_widget.dart';
import 'package:practice/statefull_correctly.dart';
import 'package:practice/stateless_stateful_widget.dart';
import 'package:practice/styles_themes.dart';
import 'package:practice/user_input_test.dart';
import 'package:practice/wrap_widget.dart';

import 'callback_function.dart';
import 'circle_avatar.dart';
import 'column_rows.dart';
import 'constraints_box.dart';
import 'custom_widget.dart';
import 'date_picker.dart';
import 'font_awesome_icon.dart';
import 'icon_widget.dart';
import 'image_widget.dart';
import 'login_form.dart';

//entry point of flutter app
void main() {
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Home(), //define that first screen opens
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        backgroundColor: Colors.blue,
      ),
      body: const SafeArea(
        child: Center(
          child: Text(
            'Hello Flutter ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          textTheme: const TextTheme(
              displayLarge:
                  TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              titleMedium:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
      home: const SplasScreen(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Flutter container"),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.green,
            child: Column(
              children: [
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.limeAccent,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      border: Border.all(width: 2, color: Colors.white),
                      boxShadow: const [
                        BoxShadow(blurRadius: 20, spreadRadius: 16)
                      ]),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "hello container !!!",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Hello flutter Devs",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    wordSpacing: 5,
                    backgroundColor: Colors.limeAccent,
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
