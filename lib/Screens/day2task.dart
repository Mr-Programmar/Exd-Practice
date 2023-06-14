import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Asad bhai Australia Wale'),
        ),
        body: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(20)),
              height: 100,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [



                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                        "Spotlight",
                        style: TextStyle(
                          color: Colors.white,

                        ),
                  ),
                      ),

                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(20)),
              height: 100,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [



                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Spotlight",
                      style: TextStyle(
                        color: Colors.white,

                      ),
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(20)),
              height: 100,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [



                  Padding  (
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Spotlight",
                      style: TextStyle(
                        color: Colors.white,

                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
