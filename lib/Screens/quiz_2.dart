import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quiz2 extends StatelessWidget {
  const Quiz2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF5F5F5),
          title: Text(
            'My Parking',
            style: TextStyle(color: Colors.black),
          ),
          leading: Image.asset('assets/icons/full.jpeg'),
          actions: [Icon(Icons.search, color: Colors.black)],
          bottom: TabBar(
              unselectedLabelColor: Color(0xffBC0063),
              labelColor: Color(0xffffffff),
              indicator: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  color: Color(0xffBC0063)),
              tabs: [
                Tab(
                  text: 'Ongoing',
                ),
                Tab(
                  text: 'Completed',
                ),
                Tab(
                  text: 'Canceled',
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF9F9F9),
                          borderRadius: BorderRadius.circular(20)),
                      height: 200,
                      width: 300,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/icons/63.png'),
                              Column(
                                children: [
                                  Text("Allington paddock"),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("7518 Washington Alley"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text("${6}.58/2 hours"),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 20,
                                        width: 60,
                                        child: Center(
                                          child: Text(
                                            'Now Active',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xffffffff)),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Color(0xffBC0063),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Divider(height: 10, color: Color(0xffCACACA)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Cancel Booking'),
                                style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    backgroundColor: Color(0xffBC0063),

                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('View Ticket'),
                                style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    backgroundColor: Color(0xffBC0063)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF9F9F9),
                          borderRadius: BorderRadius.circular(20)),
                      height: 200,
                      width: 300,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/icons/63.png'),
                              Column(
                                children: [
                                  Text("Allington paddock"),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("7518 Washington Alley"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text("${6}.58/2 hours"),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 20,
                                        width: 60,
                                        child: Center(
                                          child: Text(
                                            'Now Active',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xffffffff)),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Color(0xffBC0063),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Divider(height: 10, color: Color(0xffCACACA)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Cancel Booking'),
                                style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    backgroundColor: Color(0xffBC0063)),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('View Ticket'),
                                style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    backgroundColor: Color(0xffBC0063)),
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
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(20)),
                    height: 222,
                    width: 358,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/icons/63.png'),
                            Column(
                              children: [
                                Text("Allington paddock"),
                                SizedBox(
                                  height: 3,
                                ),
                                Text("7518 Washington Alley"),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text("${6}.58/2 hours"),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 60,
                                      child: Center(
                                        child: Text(
                                          'Now Active',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xffffffff)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color(0xffBC0063),
                                          borderRadius: BorderRadius.circular(5)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        Divider(height: 10, color: Color(0xffCACACA)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Cancel Booking'),
                              style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  backgroundColor: Color(0xffBC0063)),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('View Ticket'),
                              style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  backgroundColor: Color(0xffBC0063)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(20)),
                    height: 222,
                    width: 358,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/icons/63.png'),
                            Column(
                              children: [
                                Text("Allington paddock"),
                                SizedBox(
                                  height: 3,
                                ),
                                Text("7518 Washington Alley"),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text("${6}.58/2 hours"),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 60,
                                      child: Center(
                                        child: Text(
                                          'Now Active',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xffffffff)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color(0xffBC0063),
                                          borderRadius: BorderRadius.circular(5)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        Divider(height: 10, color: Color(0xffCACACA)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Cancel Booking'),
                              style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  backgroundColor: Color(0xffBC0063)),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('View Ticket'),
                              style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  backgroundColor: Color(0xffBC0063)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(20)),
                    height: 222,
                    width: 358,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/icons/63.png'),
                            Column(
                              children: [
                                Text("Allington paddock"),
                                SizedBox(
                                  height: 3,
                                ),
                                Text("7518 Washington Alley"),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text("${6}.58/2 hours"),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 60,
                                      child: Center(
                                        child: Text(
                                          'Now Active',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xffffffff)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color(0xffBC0063),
                                          borderRadius: BorderRadius.circular(5)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        Divider(height: 10, color: Color(0xffCACACA)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Cancel Booking'),
                              style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  backgroundColor: Color(0xffBC0063)),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('View Ticket'),
                              style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  backgroundColor: Color(0xffBC0063)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_online_outlined),
              label: 'Booking',
            ),
          ],
        ),
      ),
    );
  }
}
