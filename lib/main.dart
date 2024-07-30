import 'package:classicitproject/views/details_page/details_screen.dart';
import 'package:classicitproject/views/screens/file/test_api.dart';
import 'package:classicitproject/views/screens/home/home.dart';
import 'package:classicitproject/views/screens/login/login.dart';
import 'package:classicitproject/views/screens/national/national.dart';
import 'package:classicitproject/views/screens/practice1/practic1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DetailScreen (),
    );
  }
}
