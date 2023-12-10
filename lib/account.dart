// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

import 'pages_combination.dart';

enum Brightness { light, dark, yellow }

class Account extends StatefulWidget {
  static Brightness? brightness;
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  void getColor(int index) {}
  void reset() {
    Combination.forwardIndex = 4;
    Navigator.push(
        context,
        PageTransition(
            child: const Combination(), type: PageTransitionType.fade));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          backgroundColor:
              Combination.brightness ? Colors.white : Colors.grey.shade900,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Chế độ màn hình',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color:
                          Combination.brightness ? Colors.black : Colors.white),
                ),
              ),
              RadioListTile(
                fillColor: Combination.brightness
                    ? MaterialStateColor.resolveWith((states) => Colors.black)
                    : MaterialStateColor.resolveWith((states) => Colors.white),
                activeColor: Colors.black,
                value: true,
                groupValue: Combination.brightness,
                // value: Brightness.light,
                // groupValue: Account.brightness,
                onChanged: (value) {
                  setState(() {
                    Combination.brightness = true;
                    // Account.brightness = value;
                    reset();
                  });
                },
                title: Text(
                  'Sáng',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:
                          Combination.brightness ? Colors.black : Colors.white),
                ),
                secondary: Icon(
                  Icons.sunny,
                  color: Combination.brightness ? Colors.black : Colors.white,
                ),
              ),
              RadioListTile(
                activeColor: Colors.white,
                value: false,
                groupValue: Combination.brightness,
                // value: Brightness.dark,
                // groupValue: Account.brightness,
                onChanged: (value) {
                  setState(() {
                    Combination.brightness = false;
                    // Account.brightness = value;
                    reset();
                  });
                },
                title: Text(
                  'Tối',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:
                          Combination.brightness ? Colors.black : Colors.white),
                ),
                secondary: Icon(
                  FontAwesomeIcons.solidMoon,
                  color: Combination.brightness ? Colors.black : Colors.white,
                ),
              ),
            ],
          )),
      appBar: AppBar(
        backgroundColor: Combination.brightness ? Colors.white : Colors.black,
        iconTheme: IconThemeData(
            color: Combination.brightness ? Colors.black : Colors.white),
        elevation: 0,
      ),
      backgroundColor: Combination.brightness ? Colors.white : Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Account Page',
              style: TextStyle(
                  fontSize: 20,
                  color: Combination.brightness ? Colors.black : Colors.white),
            ),
          )
        ],
      ),
      // body:
      // SafeArea(
      //   child: Stack(children: [
      //     Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //       Padding(
      //         padding: const EdgeInsets.only(left: 20, top: 20),
      //         child: Text(
      //           'Chế độ tối',
      //           style: TextStyle(
      //               fontSize: 30,
      //               fontWeight: FontWeight.bold,
      //               color: Account.brightness ? Colors.black : Colors.white),
      //         ),
      //       ),
      //       RadioListTile(
      //         fillColor: Account.brightness
      //             ? MaterialStateColor.resolveWith((states) => Colors.black)
      //             : MaterialStateColor.resolveWith((states) => Colors.white),
      //         activeColor: Colors.black,
      //         value: true,
      //         groupValue: Account.brightness,
      //         onChanged: (newvalue) {
      //           setState(() {
      //             Account.brightness = true;
      //           });
      //         },
      //         title: Text(
      //           'Sáng',
      //           style: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //               color: Account.brightness ? Colors.black : Colors.white),
      //         ),
      //         secondary: Icon(
      //           Icons.sunny,
      //           color: Account.brightness ? Colors.black : Colors.white,
      //         ),
      //       ),
      //       RadioListTile(
      //         activeColor: Colors.white,
      //         value: false,
      //         groupValue: Account.brightness,
      //         onChanged: (newvalue) {
      //           setState(() {
      //             Account.brightness = false;
      //           });
      //         },
      //         title: Text(
      //           'Tối',
      //           style: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //               color: Account.brightness ? Colors.black : Colors.white),
      //         ),
      //         secondary: Icon(
      //           FontAwesomeIcons.solidMoon,
      //           color: Account.brightness ? Colors.black : Colors.white,
      //         ),
      //       ),
      //     ]),
      //     Align(
      //       alignment: Alignment.center,
      //       child: Text(
      //         'Account Page',
      //         style: TextStyle(
      //             fontSize: 20,
      //             color: Account.brightness ? Colors.black : Colors.white),
      //       ),
      //     ),
      //   ]),
      // ),
    );
  }
}
