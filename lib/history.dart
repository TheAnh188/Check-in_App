// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'pages_combination.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Combination.brightness ? Colors.white : Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'History Page',
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
