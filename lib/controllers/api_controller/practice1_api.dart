import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class EcommerceApi{
//practice by raju
  String url="https://fakestoreapi.com/products";
  Future getEcommerceApi()async{
    Uri uri=Uri.parse(url);
    Response response=await http.get(uri);
    if (kDebugMode) {
      print(response.statusCode);
    }
  }
}