// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'pages_combination.dart';

class CheckIn extends StatefulWidget {
  const CheckIn({super.key});

  @override
  State<CheckIn> createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Combination.brightness ? Colors.white : Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Check-in Page',
              style: TextStyle(
                  fontSize: 20,
                  color: Combination.brightness ? Colors.black : Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
