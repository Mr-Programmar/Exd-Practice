import 'package:flutter/material.dart';


import 'authentication_services.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    hintText: "TYPE YOUR EMAIL"),
                controller: emailcontroller,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    hintText: "TYPE YOUR PASS"),
                controller: passcontroller,
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  AuthenticationServices.signUp(
                    context: context,
                    email: emailcontroller.text,
                    password: passcontroller.text,
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    "Create",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
