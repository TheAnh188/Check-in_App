// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'pages_combination.dart';

class Notificationn extends StatefulWidget {
  const Notificationn({super.key});

  @override
  State<Notificationn> createState() => _NotificationnState();
}

class _NotificationnState extends State<Notificationn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Combination.brightness ? Colors.white : Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Notification Page',
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
