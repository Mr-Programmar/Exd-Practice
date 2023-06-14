

import 'package:flutter/material.dart';




class Creem extends StatelessWidget {
  const Creem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffb3c3c2),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color(0xffca377f),
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset("assets/9.png"),
                    ),
                    Icon(
                      Icons.shopping_bag,
                      color: Color(0xffca377f),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Hello Diana !",
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "What flavour do you want today?",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Papolar",
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.filter_list,
                      color: Color(0xffca377f),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .4,
                        width: MediaQuery.of(context).size.width * .45,
                        decoration: BoxDecoration(
                            color: Color(0xffc1a4a9),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/strabery.png",
                              height: MediaQuery.of(context).size.height * .2,
                              width: MediaQuery.of(context).size.height * .5,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Fraise Cream",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Strabwery Flavoured \ndelicious  icecream",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$3.24",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Color(0xffb3c3c2),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.pink,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .4,
                        width: MediaQuery.of(context).size.width * .45,
                        decoration: BoxDecoration(
                            color: Color(0xffa58f20),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/strabery 1.png",
                              height: MediaQuery.of(context).size.height * .2,
                              width: MediaQuery.of(context).size.height * .5,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Fraise Cream",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Strabwery Flavoured \ndelicious  icecream",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$3.24",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Color(0xffb3c3c2),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.pink,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .4,
                        width: MediaQuery.of(context).size.width * .45,
                        decoration: BoxDecoration(
                            color: Color(0xffc33c76),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/strabery 1.png",
                              height: MediaQuery.of(context).size.height * .2,
                              width: MediaQuery.of(context).size.height * .5,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Fraise Cream",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Strabwery Flavoured \ndelicious  icecream",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$3.24",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.pink,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New in",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(color: Colors.pinkAccent),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * .2,
                      width: MediaQuery.of(context).size.width * .2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffbda2a8)),
                      child: Image.asset(
                        "assets/strabery.png",
                        height: 30,
                        width: 30,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Caramel Flavor \nDessert",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("\$3.20")
                      ],
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.favorite_outline_outlined,
                          color: Colors.pinkAccent,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * .2,
                      width: MediaQuery.of(context).size.width * .2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffa99427)),
                      child: Image.asset(
                        "assets/strabery 1.png",
                        height: 30,
                        width: 30,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Frambaise Flavor \nDessert",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("\$1.56")
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.favorite_outline_outlined,
                          color: Colors.pinkAccent,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}