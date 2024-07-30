import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:classicitproject/controllers/api_controller/details_api.dart';
import 'package:classicitproject/models/product_details_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  DetailsServices detailsServices=DetailsServices();
  @override
  void initState() {
    detailsServices.getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: FutureBuilder(future: detailsServices.data, builder: builder)
    );
  }
}
