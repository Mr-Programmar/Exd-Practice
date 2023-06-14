// // ignore_for_file: avoid_print, use_build_context_synchronously
//
// import 'dart:convert';
//
//
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
//
// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);
//
//   @override
//   _LoginState createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   bool loading = false;
//
//
//   login(email, password) async {
//     try {
//       setState(() {
//         loading = true;
//       });
//       var url = Uri.parse('http://adeegmarket.zamindarestate.com/api/v1/login');
//       final responce = await http.post(
//         url,
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode({
//           'email': email,
//           'password': password,
//         }),
//       );
//
//       print(responce.statusCode);
//       print(responce.body);
//       if (responce.statusCode == 200) {
//         print("User Login Successfully");
//         Navigator.of(context).pushAndRemoveUntil(
//             MaterialPageRoute(builder: ((context) => const Home())),
//             (route) => false);
//       }
//
//       setState(() {
//         loading = false;
//       });
//     } catch (e) {
//       print("Catch e: $e");
//       setState(() {
//         loading = false;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Login Page"),
//       ),
//       body: Column(
//         children: [
//           const Text("Email"),
//           TextField(
//             controller: emailController,
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           const Text("Password"),
//           TextField(
//             controller: passwordController,
//           ),
//           const SizedBox(
//             height: 50,
//           ),
//           loading
//               ? const CircularProgressIndicator()
//               : ElevatedButton(
//                   onPressed: () {
//                     login(emailController.text, passwordController.text);
//                   },
//                   child: const Text("Login")),
//         ],
//       ),
//     );
//   }
// }
