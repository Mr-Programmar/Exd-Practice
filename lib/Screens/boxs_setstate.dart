import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;
  bool isRedColor = true;
  bool boxColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (boxColor == false) {
                  boxColor = true;
                } else if (boxColor == true) {
                  boxColor = false;
                }
              });
              print(boxColor);
            },
            child: Container(
              margin: const EdgeInsets.only(left: 40),
              height: 150,
              width: 300,
              color: boxColor == false ? Colors.black : Colors.green,
            ),
          ),
          Text(
            '$number',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: isRedColor == true ? Colors.red : Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                number = number + 1;
                print(number);
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 50,
              ),
              decoration: const BoxDecoration(color: Colors.amber),
              child: const Text("Add"),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  isRedColor = false;
                });
              },
              child: const Text("Color Black")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  isRedColor = true;
                });
              },
              child: const Text("Color red")),
        ],
      ),
    );
  }
}
