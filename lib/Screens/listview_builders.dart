import 'package:flutter/material.dart';

class MyListViewBuilders extends StatelessWidget {
  MyListViewBuilders({super.key});

  List product = [
    'Apple',
    'orange',
    'Banana',
    'pear',
    'Grapes',
    'Apple',
    'orange',
    'Banana',
    'pear',
    'Grapes',
    'Banana',
    'pear',
    'Grapes',
    'Apple',
    'orange',
    'Banana',
    'pear',
    'Grapes',
    'Banana',
    'pear',
    'Grapes',
    'Apple',
    'orange',
  ];

  List student = [
    {
      'id': 'BS1',
      'name': 'exd',
    },
    {
      'id': 'BS2',
      'name': 'exd2',
    },
    {
      'id': 'BS3',
      'name': 'exd3',
    },
  ];

  List images = [
    'assets/images/exd_cre.jpg',
    'assets/images/person.jpg',
    'assets/images/exd_cre.jpg',
    'assets/images/person.jpg',
    'assets/images/exd_cre.jpg',
    'assets/images/person.jpg',
    'assets/images/exd_cre.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListVeiw Builders"),
      ),
      body: Column(
        children: [
          // Text(
          //   product[2],
          //   style: const TextStyle(
          //     fontSize: 40,
          //   ),
          // ),
          // Text(
          //   product[3],
          //   style: const TextStyle(
          //     fontSize: 40,
          //   ),
          // ),
          Expanded(
            flex: 3, 
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, i) {
                  return Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                    color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(product[i].toString()),
                        Image.asset(
                          images[i],
                          width: 50,
                        ),
                      ],
                    ),
                  );
                }),
          ),   
          Expanded(
              child: ListView.builder(
            itemCount: 3,
            itemBuilder: ((context, index) {
              return ListTile(
                title: Text(student[index]['name'].toString()),
                trailing: Text(student[index]['id'].toString()),
              );
            }),
          )),




        ],
      ),
    );
  }
}
