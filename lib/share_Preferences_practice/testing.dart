import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestingSharedPref extends StatefulWidget {
  const TestingSharedPref({super.key});

  @override
  State<TestingSharedPref> createState() => _TestingSharedPrefState();
}

class _TestingSharedPrefState extends State<TestingSharedPref> {
  var name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Pref"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                SharedPreferences preferences =
                    await SharedPreferences.getInstance();
                preferences.setString('name', "Exd Pakistan");
                preferences.setInt('rollnumber', 153);
                preferences.setBool('pass', true);
                print("DAta save");
              },
              child: const Text("Save Data")),
          ElevatedButton(
              onPressed: () async {
                SharedPreferences preferences =
                    await SharedPreferences.getInstance();
                var n = preferences.getString('name');
                print(n);

                setState(() {
                  name = n;
                });

                var roll = preferences.getInt('rollnumber');
                print(roll);

                var type = preferences.getBool('pass');
                print(type);
              },
              child: const Text("Get Data")),
          Text(name.toString()),
        ],
      ),
    );
  }
}
