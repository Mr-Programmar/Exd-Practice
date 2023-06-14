import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mentorsol extends StatefulWidget {
  const Mentorsol({Key? key}) : super(key: key);

  @override
  State<Mentorsol> createState() => _MentorsolState();
}

class _MentorsolState extends State<Mentorsol> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 60,vertical: 5),
          height:  MediaQuery.of(context).size.height * .08,
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xffFFBF7E
          ),),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            
            children: [
              Image(image: AssetImage("assets/icons/Home.png")),
              Container(
                height: MediaQuery.of(context).size.height * .05,
                width: MediaQuery.of(context).size.width * .20,
                decoration: BoxDecoration(
                    color: const Color(0xff252525),
                    borderRadius: BorderRadiusDirectional.circular(10),
                    border: Border.all()),
                child:  Image(image: AssetImage("assets/icons/Heart1.png")),),

              Image(image: AssetImage("assets/icons/Chat.png")),
              Image(image: AssetImage("assets/icons/Profile.png")),


            ],
          ),
        ) ,
        body: SingleChildScrollView(

          child: Container(
            padding: EdgeInsets.only(top: 23,right: 10,left: 10,),
            color: Color(0xffF5F2DA),
            child: Column(



              children: [

                //app bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.height * .05,
                        decoration: BoxDecoration(
                            color: const Color(0xffF6DE07),
                            borderRadius: BorderRadiusDirectional.circular(5),
                            border: Border.all()),
                        child: const Icon(Icons.menu, color: Color(0xff1f1f21))),
                    const Text("Discover",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff252525),
                            fontSize: 25)),
                    Container(
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.height * .05,
                        decoration: BoxDecoration(
                            color: const Color(0xffCDEE2D),
                            borderRadius: BorderRadiusDirectional.circular(5),
                            border: Border.all()),
                        child: Icon(Icons.search, color: Color(0xff1f1f21))),
                  ],
                ),

                // const SizedBox(
                //   height: 20,
                // ),

                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("New Matches",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff252525),
                            fontSize: 18)),
                    Text("view more",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffE96302),
                            fontSize: 12)),
                  ],
                ),
                SizedBox(height: 15,),
//listview1
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Column(
                            children: const [
                              CircleAvatar(
                                minRadius: 25.0,


                                  backgroundImage:
                                      AssetImage("assets/icons/profile.jpg")),
                              SizedBox(height: 10,),
                              Text("Helena choi",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff252525),
                                      fontSize: 12)),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      );
                    },
                  ),
                ),

//-------------------------------------------------
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Your chats ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff252525),
                            fontSize: 18)),
                    Text("view more",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0219E9),
                            fontSize: 12)),
                  ],
                ),
                SizedBox(height: 15,),
//litview2
                SizedBox(height: 120,
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xffD5F4EA),
                                borderRadius: BorderRadiusDirectional.circular(5),
                                border: Border.all()),
                            height:MediaQuery.of(context).size.height * .20,
                            width: MediaQuery.of(context).size.width * .25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:  [
                                CircleAvatar(
                                    backgroundImage:
                                    AssetImage("assets/icons/profile.jpg")),
                                Text("Jessicab Mann, 23",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff252525),
                                        fontSize: 10)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(image: AssetImage("assets/icons/location.png"),),


                                    Text("Helena choi",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff252525),
                                            fontSize: 8)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      );
                    },
                  ),
                ),
//--------------------------------------------->
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("More people ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff252525),
                            fontSize: 18)),
                    Text("view more",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xffE96302),
                            fontSize: 12)),
                  ],
                ),
                SizedBox(height: 5,),

//listview3
                SizedBox(height: 250,
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 5,right: 5,top: 0,bottom: 0),
                            decoration: BoxDecoration(
                                color: const Color(0xffFFE6AE),
                                borderRadius: BorderRadiusDirectional.circular(5),
                                border: Border.all()),
                            height:MediaQuery.of(context).size.height * .30,
                            width: MediaQuery.of(context).size.width * .40,
                            child: Column(

                              mainAxisAlignment: MainAxisAlignment.spaceAround,

                              children:  [
                                //image
                                Container(

                                    height:MediaQuery.of(context).size.height * .21,
                                    width: MediaQuery.of(context).size.width * .36,


                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.circular(5),
                                        image: DecorationImage(
                                          image: AssetImage("assets/icons/profile.jpg"),
                                          fit: BoxFit.cover,
                                        ))),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Jessicab Mann, 23",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff252525),
                                                fontSize: 10)),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image(image: AssetImage("assets/icons/location.png"),),


                                            Text("Helena choi",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff252525),
                                                    fontSize: 8)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    //image
                                    Container(
                                      height: MediaQuery.of(context).size.height * .04,
                                      width: MediaQuery.of(context).size.width * .08,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffFEB5FF),
                                          borderRadius: BorderRadiusDirectional.circular(5),
                                          border: Border.all()),
                                      child: Image(image: AssetImage("assets/icons/heart.png"),),),

                                  ],
                                )

                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      );
                    },
                  ),
                ),





              ],
            ),
          ),
        ),
      ),
    );
  }
}
