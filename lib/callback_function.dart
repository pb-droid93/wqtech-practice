import 'package:flutter/material.dart';

class CallBackFunc extends StatefulWidget {
  const CallBackFunc({super.key});

  @override
  State<CallBackFunc> createState() => _CallBackFuncState();
}

class _CallBackFuncState extends State<CallBackFunc> {
  callBack() {
    print('clicked !!!');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Callback Func',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ElevatedButton(
          onPressed: callBack,
          child: const Text("click"),
        ),
      ),
    );
  }
}
