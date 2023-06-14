import 'package:flutter/material.dart';

class Screen7 extends StatelessWidget {
  const Screen7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.align_horizontal_left_outlined,
          color: Colors.blueGrey,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.account_circle_rounded,
              color: Colors.orange,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Hello!\nLinda Smith',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Lets manage your cloud storage',
              style: TextStyle(fontSize: 11),
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .45,
                  height: MediaQuery.of(context).size.height * .20,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children :const [ Icon(
                            Icons.folder,
                            color: Colors.amber,
                            size: 45,
                          ),
                            Icon(Icons.more_vert,color: Colors.white,),
                        ]),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Photos\n2451',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Last update 24 hours ago',
                          style: TextStyle(color: Colors.white, fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .45,
                  height: MediaQuery.of(context).size.height * .20,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children :const [ Icon(
                              Icons.folder,
                              color: Colors.amber,
                              size: 45,
                            ),
                              Icon(Icons.more_vert,color: Colors.white,),
                            ]),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Photos\n2451',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Last update 24 hours ago',
                          style: TextStyle(color: Colors.white, fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .45,
                  height: MediaQuery.of(context).size.height * .20,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children :const [ Icon(
                              Icons.folder,
                              color: Colors.amber,
                              size: 45,
                            ),
                              Icon(Icons.more_vert,color: Colors.white,),
                            ]),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Photos\n2451',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Last update 24 hours ago',
                          style: TextStyle(color: Colors.white, fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .45,
                  height: MediaQuery.of(context).size.height * .20,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children :const [ Icon(
                              Icons.folder,
                              color: Colors.amber,
                              size: 45,
                            ),
                              Icon(Icons.more_vert,color: Colors.white,),
                            ]),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Photos\n2451',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Last update 24 hours ago',
                          style: TextStyle(color: Colors.white, fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
