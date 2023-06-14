// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:week_1/animated_bottomnav_screen.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     print("Splash init");
//     startDelay();
//   }
//
//   startDelay() {
//     Future.delayed(
//         const Duration(
//           seconds: 3,
//         ), () {
//       print("Timer End");
//       // Goto Next Screen
//       Navigator.of(context).pushAndRemoveUntil(
//           MaterialPageRoute(builder: ((context) => AnimatedBottomNavScreen())),
//           (route) => false);
//     });
//   }
//
//   @override
//   void dispose() {
//     print("SPlash End");
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Column(
//         children: [
//           Image.asset('assets/images/exd_cre.jpg'),
//           const SizedBox(
//             height: 30,
//           ),
//           Lottie.asset(
//             'assets/json/loader.json',
//             width: 100,
//             height: 100,
//             repeat: false,
//           ),
//         ],
//       )),
//     );
//   }
// }
