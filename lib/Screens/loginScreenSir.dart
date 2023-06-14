import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  label: Text("Email"),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is Required";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  label: Text("Password"),
                ),
                validator: ((value) {
                  RegExp regex = RegExp(
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                  if (value == null || value.isEmpty) {
                    {
                      return "Password is Required";
                    }
                  } else if (value.length < 6) {
                    return "Passward should greater then 6 char";
                  } else if (value.length > 12) {
                    return "Password should be less then 12 char";
                  } else if (!regex.hasMatch(value)) {
                    return "Password must be strong, use special Char";
                  }
                  return null;
                }),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print("Fields Validate");
                    } else {
                      print("Fields Not Validate");
                    }
                  },
                  child: const Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}
