import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Api extends StatefulWidget {
  const Api({Key? key}) : super(key: key);

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  var data;
  var body;
  List savelist=[];
  void initState() {
    super.initState();
    Apiget();
  }

  Apiget() async {
    final responce =
        await http.get(Uri.parse("https://api.publicapis.org/entries"));

    var body = jsonDecode(responce.body);

    print(body);
    setState(() {
       data=body;
       savelist=body['entries'];


    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(

          child:   data==null?
          CircularProgressIndicator()
          :Text(savelist[0]['API'].toString()),
        ),
      ),
    );
  }
}
