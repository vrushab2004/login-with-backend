import 'package:flutter/material.dart';
import 'package:login_temp/home.dart';
import 'package:login_temp/login_page.dart';
import 'package:login_temp/register.dart';
import 'package:login_temp/textfield.dart';
import '';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Login(),
    );
  }
}