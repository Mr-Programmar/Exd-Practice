
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'Screens/mentorsol_task.dart';
import 'Stripe_Payment/Purchase_screen.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey="pk_test_51MvcbXHlWyXLUExh1ELJD2FSuNMRJUg5NzNW9RN8MjYtZk1Pxh3P1U6Mwn7QXcv0k6iGn5HzGtVnhRdJgIRknm1R00f076YA9q";

  await dotenv.load(fileName: "assets/.env");

  await Firebase.initializeApp();
  runApp(const ExampleApp());
}


class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SnakeNavigationBar Example',


      home: Purchase(),
    );
  }
}
