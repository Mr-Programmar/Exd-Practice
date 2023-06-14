import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mylist extends StatelessWidget {
  Mylist({Key? key}) : super(key: key);

  List product = [
    'Apple',
    "Banana",
    'Mango',
    'Grapes',
    'Alichi',
    'Watermelon',
  ];

  List images = ['assets/images/9.pmg'];
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "My Builders",
      )),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: product.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${product[index].toString()}"),
                  leading: Text("${(index + 1).toString()}"),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.red,
                  margin: EdgeInsets.all(10),
                  child: Row(children: [
                    Image.asset(
                      images[index],
                    ),
                  ]),
                );
              },
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                 tileColor: Colors.lightBlueAccent,
                  title: Text("${student[index]['name']}"),
                  trailing: Text("${student[index]['id']}"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
