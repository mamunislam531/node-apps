
import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class Nationalize{

  static Future<dynamic> nationalize()async{
  try{
    log("-------------  1111 ------------------");
    String url = "https://api.nationalize.io/?name=nathaniel";
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);
    // log("${response.body}");
    // log("---------------  ---------------");

    if(response.statusCode == 201){
      var data = jsonDecode(response.body);
      log("${data['country'][2]['country_id']}");
      log("--------------- 2222   ---------------");
      return data;
    }else{
      log("======= Wrong Response");
    }
  }catch (e){
    log("Error : $e");
  }
  return "Failed";
  }

}