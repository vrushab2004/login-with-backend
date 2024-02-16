import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
      body:SafeArea(
        child: Center(child: Text('hiii',style:TextStyle(color: Colors.white,fontSize: 40),)))
    );
  }
}