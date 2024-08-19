import 'package:flutter/material.dart';

class UserInputTest extends StatefulWidget {
  const UserInputTest({super.key});

  @override
  State<UserInputTest> createState() => _UserInputTestState();
}

class _UserInputTestState extends State<UserInputTest> {
  var emailtext = TextEditingController();
  var passtext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Input"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: TextField(
                  controller: emailtext,
                  decoration: InputDecoration(
                      hintText: 'enter email',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            const BorderSide(color: Colors.yellow, width: 2),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            const BorderSide(color: Colors.green, width: 2),
                      ),
                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(16),
                      //     borderSide: const BorderSide(color: Colors.green)),

                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.blue,
                      )),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: passtext,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'enter password',
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Colors.green)),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.orange,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    String uemail = emailtext.text.toString();
                    String uPass = passtext.text.toString();
                    print("Email : ${uemail}  Passwprd : ${uPass}");
                  },
                  child: Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}
