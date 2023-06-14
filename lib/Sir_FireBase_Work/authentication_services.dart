// ignore_for_file: unused_local_variable, use_build_context_synchronously, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';





import '../Screens/PSD_Screen.dart';
import 'app_toast.dart';

class AuthenticationServices {
  static signUp(
      {required BuildContext context,
      required email,
      required password}) async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      saveUserData();
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Psd(nme: "asad",)));
    } on FirebaseAuthException catch (e) {
      if (e.code == "unknown") {
        print("Some fild miss please double check");
      } else if (e.code == "invalid-email") {
        print("Your email format is not correct please try again");
      } else if (e.code == "weak-password") {
        print("Password should be greater then 6 digit");
      } else if (e.code == "email-already-in-use") {
        print("Your email already exist please try another email");
      }
      print("Firebase e $e");
    } catch (e) {
      print("e $e");
    }
  }

  static login({required context, required email, required password}) async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
 
    try {
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;

      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Psd(nme: "Name",)));
      AppToast.successToast(masg: "SingUp Success!");
      print("Login Success!");
    } on FirebaseAuthException catch (e) {
      print("Firebae Auth $e");
      if (e.code == "wrong-password") {
        AppToast.failToast(masg: "Your Password is Wrong Please try again");
      } else if (e.code == "user-not-found") {
        AppToast.failToast(masg: "Email not Found Please try again");
      }
    } catch (e) {
      print(e);
    }
  }

  static saveUserData() {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    firestore.collection("users").doc().set({
      'name': 'exd',
      'email': 'exd@gmail.com',
      'phone': '345234534534',
      'passrod': '123123',
    });
  }

  static logout() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth.signOut();
  }
}
