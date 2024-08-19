import 'package:flutter/material.dart';
import 'package:practice/widgets/app_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePrefPage extends StatefulWidget {
  const SharePrefPage({super.key});

  @override
  State<SharePrefPage> createState() => SharePrefPageState();
}

class SharePrefPageState extends State<SharePrefPage> {
  var nameController = TextEditingController();
  var detailsController = TextEditingController();
  var nameValue = "";
  var detalsValue = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString('name');
    var getDetails = prefs.getString('details');
    nameValue = getName.toString();
    detalsValue = getDetails.toString();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarTest(titleText: 'Pref Page'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'enter name',
                    hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    label: const Text('Name'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: detailsController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Enter Details',
                    hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade300,
                        fontWeight: FontWeight.w500),
                    label: const Text('Details'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      var name = nameController.text.toString();
                      var details = detailsController.text.toString();
                      var pref = await SharedPreferences.getInstance();
                      pref.setString("name", name);
                      pref.setString("details", details);
                      setState(() {});
                    },
                    child: const Text('Save')),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  nameValue,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.orange)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      detalsValue,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.deepPurple),
                    ),
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
