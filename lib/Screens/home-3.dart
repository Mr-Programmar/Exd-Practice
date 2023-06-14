// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:flutter/material.dart';


import 'package:http/http.dart' as http;

import '../Models/country_model.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  bool loading = false;
  List<CountryModel> coutryRecordList = [];

  @override
  void initState() {
    super.initState();
    getDatafromApi();
  }

  getDatafromApi() async {
    setState(() {
      loading = true;
    });
    final responce = await http.get(
      Uri.parse(
          'https://datausa.io/api/data?drilldowns=Nation&measures=Population'),
    );
    print(responce.statusCode);
    var body = jsonDecode(responce.body);
    List data = body['data'].toList();

    for (var i = 0; i < data.length; i++) {
      var model = CountryModel(
        id: data[i]['ID Nation'].toString(),
        nation: data[i]['Nation'].toString(),
        Slug: data[i]['Slug Nation'].toString(),
        idYear: data[i]['ID Year'].toString(),
        population: data[i]['Population'].toString(),

      );
      coutryRecordList.add(model);
      print(coutryRecordList);
    }

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("wer");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Scren'),
      ),
      body: Container(
          child: loading==true
              ? const CircularProgressIndicator()
              : ListView.builder(
                  itemCount: coutryRecordList.length,
                  itemBuilder: ((context, index) {
                    return Text(coutryRecordList[index].id);
                  }),
                )),
    );
  }
}
//
// Widget card(
//     {required context,
//     required countryName,
//     required population,
//     required year}) {
//   return Container(
//     padding: const EdgeInsets.all(30),
//     margin: const EdgeInsets.all(50),
//     height: MediaQuery.of(context).size.height,
//     width: 500,
//     color: Colors.blueGrey,
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text('Nation:'),
//             Text('$countryName'),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text('Population:'),
//             Text('$population'),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text('Year:'),
//             Text('$year'),
//           ],
//         ),
//       ],
//     ),
//   );
// }
