import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:path_provider/path_provider.dart';




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  initState() {
    _asyncMethod();
    super.initState();  final String title;

  }

  _asyncMethod() async {

    try {
      var url = "https://smarthealthcareplc.org/api/prescription-download/2024060212.jpg"; // <-- 1
      var response = await http.get(Uri.parse(url),headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer 165|9EDEAkLZPU7bNcvsQ31n9ZF6olT0GT0PeI2KM8oV157f28b9'
      });

      if (response.statusCode == 200) {
        // Get the directory to save the image
        final directory = await getApplicationDocumentsDirectory();
        final path = '${directory.path}/downloaded_image.jpg';

        // Write the image to the file
        final file = File(path);
        imageData = path;
       var a = await file.writeAsBytes(response.bodyBytes);
        print('Image saved to $path');
        log("$a");
      } else {
        print('Failed to download image');
      }
    } catch (e) {
      print('Error: $e');
    }
    setState(() {
      log("message === : ${imageData}");
      dataLoaded = true;
    });
  }

  String? imageData;
  bool dataLoaded = false;

  @override
  Widget build(BuildContext context) {
    if (dataLoaded) {
      return Scaffold(
        appBar: AppBar(
          title: Text("00000000"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("$imageData"),
              imageData != null ?
               Image.file(File(imageData!), width: 600.0, height: 290.0) : Text("data")
            ],
          ),
        ),
      );
    } else {
      return CircularProgressIndicator(
        backgroundColor: Colors.cyan,
        strokeWidth: 5,
      );
    }
  }
}