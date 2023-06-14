import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FigmaHome extends StatefulWidget {
  const FigmaHome({Key? key}) : super(key: key);

  @override
  State<FigmaHome> createState() => _FigmaHomeState();
}

class _FigmaHomeState extends State<FigmaHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(20),

              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff72C6EF), Color(0xff004E8F)],

                  // )
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/figma/Group627203.png'),
                  Text(
                    'Hi, John ✋',
                    style: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.normal),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lets start Learning',
                        style: TextStyle(
                            color: Colors.white, fontStyle: FontStyle.normal),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.search, color: Colors.white),
                            Icon(Icons.notifications, color: Colors.white),
                            Icon(Icons.shopping_cart, color: Colors.white),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Invite Friend ',
                        style: TextStyle(
                            color: Colors.white, fontStyle: FontStyle.normal),
                      ),
                      Icon(
                        Icons.share,
                        color: Colors.white,
                      )
                    ],
                  ),
                  TextField(

                    style: TextStyle(color: Colors.white, backgroundColor: Colors.white),
                    decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: "Select your ESL Course",
                    prefixIcon: Image.asset('assets/icons/Vector-2.png'),
                    suffixIcon: Image.asset('assets/icons/Vector-3.png'),



                  ),),

                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
