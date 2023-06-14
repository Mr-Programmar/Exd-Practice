import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Design extends StatelessWidget {
  const Design({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu_outlined),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/pic.jpeg"),
                          fit: BoxFit.contain,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  TextField(
                    decoration: InputDecoration(),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(5)),
                  ),

                ],
              ),
              SizedBox(
                height: 10,
              ),

              Text(
                "Winter Collection",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Get Your Winter Outfits From Home",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.20,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Text(
                      "Winter Sale",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    Positioned(
                      bottom: 50,
                      child: Text(
                        "20 % Off",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 90,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,borderRadius: BorderRadius.circular(10)
                        ),
                      child: Center(child: Text("Shop Now")),),
                    ),
                 Positioned(
                   right: 0,
               
                   top: -70,
                   child: Image.asset("assets/images/rm.png",width: 90,
                   height: 200,)
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
