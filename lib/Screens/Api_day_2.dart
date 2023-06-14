import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api2 extends StatefulWidget {
  const Api2({Key? key}) : super(key: key);

  @override
  State<Api2> createState() => _Api2State();
}

class _Api2State extends State<Api2> {
  var body;
  var save;
  List listsave = [];

  void initState() {
    super.initState();
    Apigetdata();
  }

  Apigetdata() async {
    final responce = await http.get(Uri.parse(
        "https://datausa.io/api/data?drilldowns=Nation&measures=Population"));
    print(responce.statusCode);
    var body = jsonDecode(responce.body);
    print(body);
    listsave = body['data'];

    setState(() {
      save = body;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: ListView.builder(
      itemCount: listsave.length,
      itemBuilder: ((context, index) {



        return Column(
          children: [
            Container(
              color: Colors.lightGreen,
              child: Column(
                children: [
                  Text(listsave[index]['ID Nation'].toString()),
                  Text(listsave[index]['Nation'].toString()),
                  Text(listsave[index]['ID Year'].toString()),
                  Text(listsave[index]['Year'].toString()),
                  Text(listsave[index]['Population'].toString()),
                  Text(listsave[index]['Slug Nation'].toString()),
                ],
              ),
            ),
            Divider(),
          ],
        );
      }),
    )));
  }
}
