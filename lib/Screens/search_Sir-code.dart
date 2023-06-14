// // ignore_for_file: unused_local_variable
//
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_application_123423/models/contry_model.dart';
// import 'package:flutter_application_123423/models/joke_model.dart';
// import 'package:flutter_application_123423/models/university_model.dart';
// import 'package:http/http.dart' as http;
//
// import '../Models/country_model.dart';
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
//   List<UniversityModel> universityList = [];
//   String activityType = 'education';
//   TextEditingController searchController = TextEditingController();
//   List<UniversityModel> filterList = [];
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
//       final responce = await http.get(
//         Uri.parse('http://universities.hipolabs.com/search?country=pakistan'),
//       );
//       print(responce.statusCode);
//       var body = jsonDecode(responce.body);
//       if (responce.statusCode == 200) {
//         List data = body.toList();
//
//         for (var element in data) {
//           var model = UniversityModel(
//             contryName: element['country'].toString(),
//             uniName: element['name'].toString(),
//             state: element['state-province'].toString(),
//             webPage: element['web_pages'] == null
//                 ? []
//                 : element['web_pages'].toList(),
//           );
//           universityList.add(model);
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
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("WellCome! ${widget.name}"),
//       ),
//       body: Column(
//         children: [
//           TextField(
//             controller: searchController,
//             onChanged: ((value) {
//               setState(() {
//                 filterList = universityList.where((element) {
//                   return element.uniName
//                           .toUpperCase()
//                           .contains(searchController.text.toUpperCase()) ||
//                       element.state
//                           .toUpperCase()
//                           .contains(searchController.text.toUpperCase());
//                 }).toList();
//               });
//             }),
//           ),
//           loading
//               ? const CircularProgressIndicator()
//               : searchController.text.isEmpty
//                   ? SizedBox(
//                       height: 400,
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         itemCount: universityList.length,
//                         itemBuilder: ((context, index) {
//                           return Container(
//                             color: Colors.green,
//                             padding: const EdgeInsets.all(20),
//                             margin: const EdgeInsets.symmetric(
//                                 vertical: 10, horizontal: 50),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(universityList[index].contryName),
//                                 Text(universityList[index].state),
//                                 Text(universityList[index].uniName),
//                                 // for (int element
//                                 //     in universityList[index].webPage)
//                                 //   Text(universityList[index]
//                                 //       .webPage[0]
//                                 //       .toString()),
//                               ],
//                             ),
//                           );
//                         }),
//                       ),
//                     )
//                   : SizedBox(
//                       height: 400,
//                       child: filterList.isEmpty
//                           ? const Center(child: Text("No Results"))
//                           : ListView.builder(
//                               shrinkWrap: true,
//                               itemCount: filterList.length,
//                               itemBuilder: ((context, index) {
//                                 return Container(
//                                   color: Colors.green,
//                                   padding: const EdgeInsets.all(20),
//                                   margin: const EdgeInsets.symmetric(
//                                       vertical: 10, horizontal: 50),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Text(filterList[index].contryName),
//                                       Text(filterList[index].state),
//                                       Text(filterList[index].uniName),
//                                     ],
//                                   ),
//                                 );
//                               }),
//                             ),
//                     ),
//         ],
//       ),
//     );
//   }
//
//   Widget card(
//       {required context,
//       required countryName,
//       required population,
//       required year}) {
//     return Container(
//       padding: const EdgeInsets.all(30),
//       margin: const EdgeInsets.all(50),
//       height: MediaQuery.of(context).size.height,
//       width: 500,
//       color: Colors.blueGrey,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text('Nation:'),
//               Text('$countryName'),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text('Population:'),
//               Text('$population'),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text('Year:'),
//               Text('$year'),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
