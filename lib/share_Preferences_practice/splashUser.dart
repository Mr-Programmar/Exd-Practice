
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homeUser.dart';
import 'loginUser.dart';

class SplashUser extends StatefulWidget {
  const SplashUser({super.key});

  @override
  State<SplashUser> createState() => _SplashUserState();
}

class _SplashUserState extends State<SplashUser> {
  @override
  void initState() {
    super.initState();
  }

  delayUser() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var loggedUser = pref.getBool('logIn');
    print(loggedUser);

    Future.delayed(const Duration(seconds: 3), () {
      if (loggedUser == true) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const HomeUser()));
      } else {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const LoginUser()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    delayUser();
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
