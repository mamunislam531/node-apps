import 'dart:developer';

import 'package:classicitproject/controllers/api_controller/nationalize.dart';
import 'package:flutter/material.dart';

class NationalScreen extends StatefulWidget {
  const NationalScreen({super.key});

  @override
  State<NationalScreen> createState() => _NationalScreenState();
}

class _NationalScreenState extends State<NationalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("National"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async{
                  var d = await Nationalize.nationalize();
                  log("====================================");
                  log("${d}");
                },
                child: Text("Call Api"))],
        ),
      ),
    );
  }
}
