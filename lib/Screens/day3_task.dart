// import 'package:flutter/cupertino.dart';
//
// import 'package:flutter/material.dart';
//
// import 'day4_friday.dart';
//
// class Screen3 extends StatelessWidget {
//   const Screen3({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Image.asset(
//               'assets/pakistan.webp',
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Text('Online Business Channal',
//               style: const TextStyle(
//                 color: Colors.blue,
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold,
//               )),
//           SizedBox(
//             height: 20,
//           ),
//           Text(
//             'Lorem ipsum dolor sit ametconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(
//             height: 100,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child:
//
//
//                 Text('SKIP',
//                     style: const TextStyle(
//                       color: Colors.blue,
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                     )),
//               ),
//               Icon(Icons.invert_colors_on_sharp),
//               Padding(
//                 padding: const EdgeInsets.only(right: 20),
//                 child: GestureDetector(
//                   onTap:(){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen4()));},
//                   child: Text('NEXT',
//                       style: const TextStyle(
//                         color: Colors.blue,
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold,
//                       )),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
