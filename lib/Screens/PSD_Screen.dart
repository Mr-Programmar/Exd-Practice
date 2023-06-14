import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Psd extends StatelessWidget {
    var nme;
   Psd({required this.nme}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(Icons.chat),
        onPressed: () {},
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.pink,
                    ),
                    Text(
                      "${nme}",
                      style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(Icons.construction, color: Colors.pink),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: const BoxDecoration(color: Colors.brown),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "OCT2015",
                          style: TextStyle(color: Colors.pink, fontSize: 30),
                        ),
                        Text("Saturday",
                            style: TextStyle(color: Colors.pink, fontSize: 20)),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.pink, shape: BoxShape.circle),
                      child: Text('14',
                          style: TextStyle(color: Colors.white, fontSize: 40)),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 4, bottom: 4),
                  decoration: BoxDecoration(color: Colors.pink),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "MORNING",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.cloudy_snowing,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              "-1",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ]),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "AFTERNOON",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.cloud,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              "-02",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ]),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "EVENING",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.cloud_off_outlined,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              "-15",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ]),
                    ],
                  ),
                )),
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: const [
                    ListTile(
                      iconColor: Colors.pink,
                      leading: Icon(
                        Icons.delete_forever,
                      ),
                      title: Text(
                        "FAVORITES",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      height: 3,
                    ),
                    ListTile(
                      iconColor: Colors.pink,
                      leading: Icon(
                        Icons.search,
                      ),
                      title: Text(
                        "SEARCH",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      height: 3,
                    ),
                    ListTile(
                      iconColor: Colors.pink,
                      leading: Icon(
                        Icons.star,
                      ),
                      title: Text(
                        "SELECT",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(color: Colors.pink),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.article,
                            color: Colors.white,
                            size: 50,
                          ),
                          Text(
                            "DOCUMENT",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.calendar_month_sharp,
                            color: Colors.white,
                            size: 50,
                          ),
                          Text(
                            "CALENDAR",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.cloud_done,
                            color: Colors.white,
                            size: 50,
                          ),
                          Text(
                            "WEATHER",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.brown),
                  child: Center(
                      child: Text(
                    "Design by 🐱 PSDFreebies.com",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                )),
          ],
        ),
      ),
    );
  }
}
