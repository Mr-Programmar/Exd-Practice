// import 'package:audioplayers/audioplayers.dart';
// import 'package:exd_practice/Screens/google_nav_bar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_sound/public/tau.dart';
// import 'package:lottie/lottie.dart';
//
// import 'PSD_Screen.dart';
// import 'calculator.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   FlutterSound flutterSound = FlutterSound();
//    late AudioPlayer audioPlayer;
//
//
//   @override
//   void initState() {
//
//     super.initState();
//
//     audioPlayer=AudioPlayer()..setSourceAsset("assets/sound.mp3");
//     audioPlayer.play(AssetSource("assets/sound.mp3"));
//     startDelay();
//
//
//
//
//   }
//
//   void dispose() {
//
//     audioPlayer.stop();
//     super.dispose();
//
//   }
//
//
//   startDelay() {
//     Future.delayed(
//         Duration(
//           seconds: 10,
//         ), (() {
//       Navigator.of(context).pushAndRemoveUntil(
//           MaterialPageRoute(builder: ((context) => Psd(nme: "hi",))), (route) => false);
//     }));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//
//           ElevatedButton(onPressed: (){
//
//
//             // player.load("assets/sound.mp3");
//
//           }, child: Text("play me")),
//           Image.asset(
//             "assets/splash/splashscr.jpeg",
//             fit: BoxFit.cover,
//           ),
//           Lottie.asset('assets/splash/lottie1.json',
//               fit: BoxFit.fill, height: 200, width: 200)
//         ],
//       ),
//     );
//   }
// }
