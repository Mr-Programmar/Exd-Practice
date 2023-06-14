
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginUser.dart';

class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  var img;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home PAge"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text("LogOut"),
            onPressed: () async {
              SharedPreferences preferences =
                  await SharedPreferences.getInstance();
              preferences.setBool('logIn', false);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginUser()));
            },
          ),
          ElevatedButton(
              onPressed: () async {
                SharedPreferences preferences =
                    await SharedPreferences.getInstance();
                preferences.setString('path', 'assets/images/9.png');
              },
              child: const Text("SAve PAth")),
          ElevatedButton(
              onPressed: () async {
                SharedPreferences preferences =
                    await SharedPreferences.getInstance();
                var path = preferences.getString('path');
                setState(() {
                  img = path;
                });
              },
              child: const Text("Get PAth")),
          Image.asset(img.toString()),
        ],
      ),
    );
  }
}
