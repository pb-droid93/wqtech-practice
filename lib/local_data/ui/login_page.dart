import 'package:flutter/material.dart';
import 'package:practice/bmi_practice/pages/bmi_form.dart';
import 'package:practice/widgets/app_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var userIdController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(
          titleText: 'Login Page',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: userIdController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    label: const Text('User Id'),
                    hintText: 'enter user id',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.orange),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: passwordController,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      label: const Text("Password"),
                      hintText: 'enter password',
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.orange),
                        borderRadius: BorderRadius.circular(12),
                      )),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () async {
                      var sPrif = await SharedPreferences.getInstance();
                      sPrif.setBool('login', true);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BMIForm()));
                    },
                    child: const Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
