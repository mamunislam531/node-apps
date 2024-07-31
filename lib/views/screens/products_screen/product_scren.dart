

import 'dart:developer';

import 'package:classicitproject/controllers/api_controller/product_list.dart';
import 'package:classicitproject/models/productModel.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Products> data = [];

  getData()async{
    data = await ProductListService.productListService();
  log("========== Data :${data.length}");
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Screen"),
      ),
      body: Container(
        color: Colors.red,
        child: data.isNotEmpty ? GridView.builder(
          itemCount: data.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.2,
              crossAxisSpacing: .5, crossAxisCount: 2,
            ),
            itemBuilder: (context,index){
              return  Card(
                child: Column(
                  children: [
                  Image.network(
                      height: 100,
                      "https://cit-ecommerce-codecanyon.bandhantrade.com/images/product/240523-BSCIQC.png"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(data[index].nameEn ?? ""),
                          Text(data[index].regPrice.toString()),
                          Text(data[index].rating.toString()),

                        ],
                      ),
                    )
                  ],
                ),
              );
            })
            : CircularProgressIndicator(),
      ),
    );
  }
}
