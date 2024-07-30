

import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginService {

  static Future<bool> loginService({required String email,required String pass}) async {
    try {
      log("========================= 11111  ===============");
      log("===== $email    $pass =====");
      log("========================= 11111  ===============");
      Uri url = Uri.parse("https://cit-ecommerce-codecanyon.bandhantrade.com/api/login");
      var body = {
        "email_phone" : email,
        "password" : pass
      };
      var response = await http.post(url,body: body);

      log("========= ${response.statusCode}  ===============");

      if(response.statusCode == 200){
        var data = jsonDecode(response.body);
        String token = data['token'] ?? "null";
        log("------------- Token : $token");
        return true;
      }
    } catch (e) {
      log("Error : $e");
    }
    return false;
  }
}