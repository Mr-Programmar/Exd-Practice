import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .30,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                      bottomRight: Radius.circular(150),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 90,
                  bottom: 30,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/pic.jpeg"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
                child: Text(
              "Welcome!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            Center(
                child: Text(
              "Sign in to continue!",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  prefixIcon: Icon(Icons.email),
                  label: Text("Email"),
                ),
              ),





            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  prefixIcon: Icon(Icons.email),
                  label: Text("password"),
                ),
              ),





            ),


          ],
        ),
      ),
    );
  }
}
