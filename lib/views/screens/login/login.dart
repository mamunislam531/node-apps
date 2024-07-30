import 'dart:developer';

import 'package:classicitproject/controllers/api_controller/login.dart';
import 'package:classicitproject/views/screens/national/national.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: emailController,
            ),
            TextField(
              controller: passController,
            ),
            ElevatedButton(onPressed: () async{
              bool status = await LoginService.loginService(email: emailController.text, pass: passController.text);
           log("Status : $status");
           if(status){
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Success")));
             Navigator.push(context, MaterialPageRoute(builder: (context)=> NationalScreen()));
           }else{
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Failed")));
           }
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
