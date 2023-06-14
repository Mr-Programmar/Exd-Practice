// // ignore_for_file: unused_local_variable
//
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_application_123423/models/contry_model.dart';
// import 'package:flutter_application_123423/models/joke_model.dart';
// import 'package:flutter_application_123423/screens/detail.dart';
// import 'package:http/http.dart' as http;
//
// class Home extends StatefulWidget {
//   String name;
//   String email;
//   Home({required this.name, required this.email});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   bool loading = false;
//   List<CountryModel> coutryRecordList = [];
//   late JokeModel myModel;
//
//     String activityType= 'education';
//
//
//   @override
//   void initState() {
//     super.initState();
//     getDatafromApi(activityType);
//   }
//
//   getDatafromApi(type) async {
//     try {
//       setState(() {
//         loading = true;
//       });
//
//       var api = Uri.parse('http://www.boredapi.com/api/activity?type=$type');
//       final responce = await http.get(
//         Uri.parse(
//             'https://datausa.io/api/data?drilldowns=Nation&measures=Population'),
//       );
//       print(responce.statusCode);
//       var body = jsonDecode(responce.body);
//       if (responce.statusCode == 200) {
//         List data = body['data'].toList();
//
//         for (var i = 0; i < data.length; i++) {
//           var model = CountryModel(
//             id: data[i]['ID Nation'].toString(),
//             nation: data[i]['Nation'].toString(),
//             Slug: data[i]['Slug Nation'].toString(),
//             idYear: data[i]['ID Year'].toString(),
//             population: data[i]['Population'].toString(),
//             year: data[i]['Year'].toString(),
//           );
//           coutryRecordList.add(model);
//           print(coutryRecordList);
//         }
//       }
//       setState(() {
//         loading = false;
//       });
//     } catch (e) {
//       print("Catch e: $e");
//       setState(() {
//         loading = false;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print("wer");
//
//     return Scaffold(
//
//       appBar: AppBar(
//         title: Text("WellCome! ${widget.name}"),
//       ),
//       body: Container(
//         child: Row(
//         children: [
//           ElevatedButton(onPressed: (){
//             setState(() {
//               activityType = "music";
//             });
//             getDatafromApi(activityType);
//           }, child: Text("music")),
//         ],
//         ),
//       ),
//           // child: loading
//           //     ? const CircularProgressIndicator()
//           //     : ListView.builder(
//           //         itemCount: coutryRecordList.length,
//           //         itemBuilder: ((context, index) {
//           //           return GestureDetector(
//           //             onTap: () {
//           //               Navigator.of(context).push(MaterialPageRoute(
//           //                   builder: ((context) => Detail(
//           //                         countryData: coutryRecordList[index],
//           //                         countryName: coutryRecordList[index].nation,
//           //                       ))));
//           //             },
//           //             child: Container(
//           //                 color: Colors.green,
//           //                 margin: const EdgeInsets.symmetric(
//           //                   horizontal: 30,
//           //                   vertical: 20,
//           //                 ),
//           //                 padding: const EdgeInsets.symmetric(
//           //                   horizontal: 30,
//           //                   vertical: 20,
//           //                 ),
//           //                 child: Column(
//           //                   children: [
//           //                     Text(coutryRecordList[index].population),
//           //                     Text(coutryRecordList[index].nation),
//           //                   ],
//           //                 )),
//           //           );
//           //         }),
//           //       )),
//
//    );
//   }
// }
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
