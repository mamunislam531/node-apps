//
//
// import 'package:classicitproject/controllers/api_controller/details_api.dart';
// import 'package:classicitproject/models/product_details_model.dart';
// import 'package:flutter/material.dart';
//
// class DetailScreen extends StatefulWidget {
//   const DetailScreen({super.key});
//
//   @override
//   State<DetailScreen> createState() => _DetailScreenState();
// }
//
// class _DetailScreenState extends State<DetailScreen> {
//   @override
//   void initState() {
//     DetailsServices.getData();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Product Details"),
//       ),
//       body: FutureBuilder(future: DetailsServices.getData(), builder: (context,snapshot){
//
//        // var data=snapshot.data();
//         return GridView.builder(
//             itemCount: 18,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index){
//           return Card(
//             child: Column(
//               children: [
//                 Text("Name: ")
//               ],
//             ),
//           );
//         });
//       })
//     );
//   }
// }
