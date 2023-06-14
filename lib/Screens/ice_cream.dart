import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ice extends StatelessWidget {
  const Ice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  decoration: BoxDecoration(color: Colors.pinkAccent),
                  child: Icon(Icons.account_circle_rounded),
                ),
                Icon(
                  Icons.add_shopping_cart,
                  color: Colors.pinkAccent,
                ),
              ]),

              SizedBox(height: 30,),
              Text(
                'Hello Diana!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'What Flavour do you want today!',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.menu,
                  color: Colors.pinkAccent,
                ),
              ]),

SizedBox(
  height: 20,
),
              SizedBox
                (height: MediaQuery.of(context).size.height*.35,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width*.40,
                        height: MediaQuery.of(context).size.height*.30,
                        decoration: BoxDecoration(color: Colors.purpleAccent,borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(image: AssetImage('assets/images/9.png')),

                              Text(
                                'Fraise Cream',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Caramel Flavour Dessert yummy',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),

                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children:[
                             Text('\$2.50'),
                               Icon(Icons.add_box),
                           ])
                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width*.40,
                        height: MediaQuery.of(context).size.height*.80,
                        decoration: BoxDecoration(color: Colors.purpleAccent,borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(image: AssetImage('assets/images/9.png')),

                              Text(
                                'Fraise Cream',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Caramel Flavour Dessert yummy',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    Text('\$2.50'),
                                    Icon(Icons.add_box),
                                  ])
                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width*.40,
                        height: MediaQuery.of(context).size.height*.80,
                        decoration: BoxDecoration(color: Colors.purpleAccent,borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(image: AssetImage('assets/images/9.png')),

                              Text(
                                'Fraise Cream',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Caramel Flavour Dessert yummy',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    Text('\$2.50'),
                                    Icon(Icons.add_box),
                                  ])
                            ],
                          ),
                        ),
                      ),
                    ),
                    

                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
