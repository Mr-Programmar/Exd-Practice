// import 'package:exd_practice/day2task.dart';
// import 'package:exd_practice/day3_task.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Screen4 extends StatelessWidget {
//   const Screen4({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             width: double.infinity,
//             height: 350,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(20),
//                     bottomRight: Radius.circular(20)),
//                 gradient: LinearGradient(
//                     colors: [Color(0xfffcaf79), Color(0xffe47933)])),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 80,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.of(context).pop(MaterialPageRoute(
//                                 builder: (context) => Screen3()));
//                           },
//                           child: Icon(
//                             Icons.arrow_back,
//                             color: Colors.white,
//                           ),
//                         ),
//                         Icon(Icons.label_off_rounded, color: Colors.white),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//
//                       children: [
//
//                         Image(image: AssetImage('assets/images/chokbar.jpg'),height: 50, width: 50,),
//                       ],
//                     ),
//
//                     Column(
//
//                       children: [
//                         Icon(Icons.add_shopping_cart),
//                         Icon(Icons.add),
//                       ],
//                     )
//
//                   ],
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
