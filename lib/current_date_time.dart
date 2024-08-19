import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurrentDateTime extends StatefulWidget {
  const CurrentDateTime({super.key});

  @override
  State<CurrentDateTime> createState() => _CurrentDateTimeState();
}

class _CurrentDateTimeState extends State<CurrentDateTime> {
  @override
  Widget build(BuildContext context) {
    // for current time
    var time = DateTime.now();
    // date formating using  intl package

    return Scaffold(
      appBar: AppBar(
        title: const Text("current date time"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'current month : ${time.month}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'current day : ${time.day}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'current year : ${time.year}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'current hr : ${time.hour}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'current minute : ${time.minute}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'current seconds : ${time.second}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'current milisec : ${time.millisecond}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'current microsec : ${time.microsecond}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'current date : ${time}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'Date Format : ${DateFormat('Hms').format(time)}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'Date Format : ${DateFormat('dd-MMM-yyyy').format(time)}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'Date Format : ${DateFormat('jms').format(time)}',
                style: const TextStyle(fontSize: 16),
              ),
              Text('date : ${DateFormat('yM').format(time)}'),
              Text('Quarter : ${DateFormat('QQQQ').format(time)}'),
              Text('weak days : ${DateFormat('EEEE').format(time)}'),
              Text('date : ${DateFormat('yMMMMEEEEd').format(time)}'),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text('Current Time'))
            ],
          ),
        ),
      ),
    );
  }
}
