// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exd App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          width: 400,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              colors: const [Color(0xfffcaf79), Color(0xffe47933)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            // image: DecorationImage(
            //   image: AssetImage('assets/images/bg2.jpg'),
            //   fit: BoxFit.fill,
            //   opacity: 0.5,
            // ),
            borderRadius: BorderRadius.circular(30),
            // boxShadow: const [
            //   BoxShadow(
            //       color: Colors.yellow,
            //       blurRadius: 5,
            //       spreadRadius: 2,
            //       offset: Offset(0, 0)),
            // ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Starts",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "This is the galaxy starts. This is the galaxy starts. This is the galaxy starts.",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    alignment: Alignment.center,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: const [
                        Text("Submit"),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Text(
                      "View Detail",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/images/startBg.jpg'))),
        ),
      ],
    ));
  }
}
