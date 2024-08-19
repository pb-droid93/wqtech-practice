import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../login_form.dart';

class TimerController extends GetxController {
  Timer? _timer;
  DateTime? _savedTime;
  String? _id;

  @override
  void onInit() {
    super.onInit();
    _loadData();
  }

  Future<void> _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedTime = prefs.getString('savedTime');
    _id = prefs.getString('id');

    if (savedTime != null) {
      _savedTime = DateTime.parse(savedTime);
    }

    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(minutes: 2), (timer) {
      if (_savedTime != null && _id != null) {
        if (DateTime.now().difference(_savedTime!).inMinutes >= 2) {
          _showPopup();
        }
      }
    });
  }

  Future<void> saveData(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _savedTime = DateTime.now();
    _id = id;

    await prefs.setString('savedTime', _savedTime!.toIso8601String());
    await prefs.setString('id', _id!);
  }

  void _showPopup() {
    Get.dialog(
      AlertDialog(
        title: const Text('Reminder'),
        content: const Text('You have an incomplete process.'),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
              Get.to(DesiredPage());
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
