import 'dart:convert';

import 'package:exd_practice/Stripe_Payment/stripe_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;

class Purchase extends StatefulWidget {
  const Purchase({Key? key}) : super(key: key);

  @override
  State<Purchase> createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stripe payment")),
      body: Center(child: TextButton(onPressed: () {

        StripeMethod.makePayment();




      }, child: Text("pay",style: TextStyle(fontSize: 30),))),
    );
  }


}
