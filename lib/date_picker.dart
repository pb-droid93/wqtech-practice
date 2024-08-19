import 'package:flutter/material.dart';

class DatePickerTest extends StatelessWidget {
  const DatePickerTest({super.key});

  @override
  Widget build(BuildContext context) {
    //var
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Date Time Picker',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Selected date : ',
                  style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic),
                ),
                ElevatedButton(
                    onPressed: () async {
                      DateTime? datePicked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2025),
                      );

                      if (datePicked != null) {
                        print('date selected : ${datePicked.day}');
                      }
                    },
                    child: const Text('Date Picker')),
                ElevatedButton(
                    onPressed: () async {
                      TimeOfDay? time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          initialEntryMode: TimePickerEntryMode.input);
                      if (time != null) {
                        print("picked time ${time.hour}: ${time.minute}");
                      }
                      time = time.toString() as TimeOfDay?;
                    },
                    child: Text('Select Time')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
