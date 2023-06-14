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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: 10,
                  itemBuilder: ((context, index) {
                    return Container(
                      // margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),

                      child: Text(index.toString()),
                    );
                  }),
                ),
              )),
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
