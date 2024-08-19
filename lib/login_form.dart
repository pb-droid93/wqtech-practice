import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/service/timer_service.dart';
import 'package:practice/widgets/app_bar.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TimerController timerController = Get.put(TimerController());

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext build) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: "Login Form",
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Enter email !!!',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.purple),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: passwordController,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      hintText: 'enter password ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.purple),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      String id = '123'; // Replace with your actual ID logic
                      await timerController.saveData(id);
                      setState(() {});
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.teal),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DesiredPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desired Page'),
      ),
      body: Center(
        child: Text('Complete your process here.'),
      ),
    );
  }
}
