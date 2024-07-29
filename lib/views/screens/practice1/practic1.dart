import 'package:classicitproject/controllers/api_controller/practice1_api.dart';
import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  EcommerceApi ecommerceApi=EcommerceApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecommerce Api"),
        centerTitle: true,
      ),
body: Center(
  child: ElevatedButton(onPressed: ()async{
   await ecommerceApi.getEcommerceApi();
  },child: const Text("Ecommerce Api"),),
),
    );
  }
}
