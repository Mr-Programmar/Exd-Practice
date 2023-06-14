import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Figma_Screen.dart';
import 'PSD_Screen.dart';

class Pass extends StatefulWidget {
  const Pass({Key? key}) : super(key: key);

  @override
  State<Pass> createState() => _PassState();
}

class _PassState extends State<Pass> {

  TextEditingController emailsave= TextEditingController();
  TextEditingController passsave= TextEditingController();
  TextEditingController getname= TextEditingController();
  TextEditingController get_phone= TextEditingController();
  TextEditingController p_confirm= TextEditingController();
 late var nmee;
  bool isobscure = true;
  bool issign = true;
  final formKey = GlobalKey<FormState>();


  loginapi( String e_mail, String p_assword, BuildContext context) async{



   try{

  var url=Uri.parse("http://adeegmarket.zamindarestate.com/api/v1/login");

  print("cLLING");
    final responce=    await http.post(
      url,
      headers: {"Content-Type":'application/json'},
      body: jsonEncode({
        'email': e_mail,
        "password":p_assword,
      }),


    );
    // print(responce.statusCode);
    // print(responce.body);
    if(responce.statusCode==200){
     final body    =jsonDecode(responce.body);
     nmee=body['name'];
     print(nmee);
      print("ok");
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: ((context) => Psd (nme:nmee))), (route) => false);

    }
    }

    catch(e){

      print(e);
    }




  }

  signupapi(name, email,phone,password,password_confirmation,) async {
    try {
nmee=name;
      var url = Uri.parse("http://adeegmarket.zamindarestate.com/api/v1/reg");
        final responce = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
        'name':   name,
        'email': email,
        'phone': phone,
        'password': password,

        'password_confirmation':password_confirmation,
        'role':'2',

        }),
      );

      print(responce.statusCode);
      print(responce.body);
      if (responce.statusCode == 200) {
        print("User Login Successfully");
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: ((context) =>  Psd(nme:name))),
                (route) => false);
      }


    } catch (e) {
      print("Catch e: $e");

    }
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        body: Container(
          margin: EdgeInsets.only(left: 30, top: 50, right: 30, bottom: 0),
          padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
          height: 500,
          width: 300,
          decoration: BoxDecoration(color: Color(0xffffffff)),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: emailsave,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email is required";
                      }
                    },
                    obscureText: isobscure,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isobscure = !isobscure;
                            });
                          },
                          child: Icon(Icons.visibility_sharp)),
                      label: Text("Email"),
                    ),
                  ),
                  TextFormField(

                    controller: passsave,
                    decoration: InputDecoration(
                      label: Text("Passward"),
                    ),
                  ),
                  issign == true
                      ? SizedBox()
                      : TextFormField(
                    controller: getname,
                          decoration: InputDecoration(
                            label: Text("User Name"),
                          ),
                        ),
                  issign == true
                      ? SizedBox()
                      : TextFormField(
                    controller: get_phone,
                          decoration: InputDecoration(
                            label: Text("Phone Number"),
                          ),
                        ),
                  issign == true
                      ? SizedBox()
                      : TextFormField(
                    controller: p_confirm,
                          decoration: InputDecoration(
                            label: Text("Password Confirmation"),
                          ),
                        ),
                  TextButton(
                      onPressed: () {
                        loginapi(emailsave.text, passsave.text,context);
                        // setState(() {
                        //   issign = !false;
                        //
                        //
                        // });

                        // if (formKey.currentState!.validate()) {}
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: issign == true
                              ? Colors.lightGreenAccent
                              : Color(0xffffffff)),
                      child: Text("Sign in")),
                  TextButton(
                      onPressed: () {

                        signupapi(getname.text,emailsave.text,get_phone.text,passsave.text,p_confirm.text );
                        setState(() {
                          issign = false;
                        });




                      },
                      child: Text("Sign up")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
