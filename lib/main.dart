// import 'package:check_in_app/account.dart';
import 'package:check_in_app/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
        ),
      ),
      title: 'Check-in App',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      // home: const Combination(),
    ));
