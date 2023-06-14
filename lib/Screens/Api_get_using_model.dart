// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// import '../../Models/country_model.dart';
//
// class Api_model extends StatefulWidget {
//   const Api_model({Key? key}) : super(key: key);
//
//   @override
//   State<Api_model> createState() => _Api_modelState();
// }
//
// class _Api_modelState extends State<Api_model> {
//   Model_1 obj;
//
//   void iniatState() {
//     super.initState();
//     Apigetdata();
//   }
//
//   Apigetdata() async {
//     print("hi");
//     final responce = await http.get(Uri.parse(
//         "https://datausa.io/api/data?drilldowns=Nation&measures=Population"));
//
//     print(responce.statusCode);
//     var body = jsonDecode(responce.body);
//     print("hi");
//     List data = body['data'].toList();
//
//       var obj = Model_1(
//         id: data[0]["Id Nation"].toString(),
//         nation: data[0]['Nation'].toString(),
//         populaion: data[0]['Population'].toString(),
//         year: data[0]['Year'].toString());
//
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: Container(
//         child: Text(obj.id.toString()),
//       ),
//     );
//   }
// }
