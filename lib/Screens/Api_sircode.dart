import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var data;
  bool loading = false;
  List coutryList = [];

  @override
  void initState() {
    super.initState();
    getDatafromApi();
  }

  getDatafromApi() async {

    final responce = await http.get(
        Uri.parse('https://api.publicapis.org/entries'),
    );
    // print(responce.statusCode);
    // print(responce.body);
      var body = jsonDecode(responce.body);
      setState(() {
        data = body;
      });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Scren'),
      ),
      body: Container(
        child: data == null
            ? const CircularProgressIndicator()
            : Column(
                children: [
                  Text("Total Countries: ${data['count'].toString()}"),
                  // ListView.builder(
                  //   shrinkWrap: true,
                  //   itemCount: coutryList.length,
                  //   itemBuilder: ((context, index) {
                  //     return Column(
                  //       children: [
                  //         Text(coutryList[index]['Description'].toString()),
                  //         Text(coutryList[index]['Category'].toString()),
                  //         const Divider(),
                  //       ],
                  //     );
                  //   }),
                  // )
                ],
              ),
      ),
    );
  }
}
