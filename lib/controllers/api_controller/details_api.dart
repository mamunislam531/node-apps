import 'dart:convert';
import 'dart:developer';

import 'package:classicitproject/models/product_details_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class DetailsServices {
  List<ProductDetailsModel> data=[];
   void getData() async {
    try{
      Response response = await http.get(Uri.parse(
          "https://cit-ecommerce-codecanyon.bandhantrade.com/api/app/v1/products"));
      log("Response: ${response.statusCode}");
      if(response.statusCode==200){
        List<dynamic> jsonList=jsonDecode(response.body)["products"];
        log("Data: ${jsonList.runtimeType}");
        data=jsonList.map((e)=>ProductDetailsModel.fromJson(e)).toList();
        log("Data: ${data.runtimeType}");

      }
      else{
       throw Exception("");

      }
    }
    catch (e){
      log("Error: $e");
    }

  }
}
