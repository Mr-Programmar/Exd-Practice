import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drwer extends StatelessWidget {
  const Drwer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("Hi Pakistan"),


      ),
    drawer:
        Drawer(
          child: Column(
            children: [DrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),

                child: UserAccountsDrawerHeader(

                  accountName: Text("ASAD"),
                  accountEmail: Text("asads8864@gmail.com"),

                  ),
                ),

              ListTile(
                trailing: Icon(Icons.arrow_back),
                leading:Icon(Icons.account_circle),
                title: Text("Profile"),
                subtitle: Text("This is profile"),
                tileColor: Colors.amber,
                hoverColor: Colors.white,
                onTap: (){},
                selectedColor: Colors.tealAccent,
                selectedTileColor: Colors.black,
                selected: false,

              ),
              ListTile(
                trailing: Icon(Icons.arrow_back),
                leading:Icon(Icons.account_circle),
                title: Text("Profile"),
                subtitle: Text("This is profile"),
                tileColor: Colors.lightBlueAccent,
                hoverColor: Colors.white,
                onTap: (){},
                selectedColor: Colors.purpleAccent,
                selectedTileColor: Colors.black,
                selected: true,

              ),
  ],),





          ),






    );
  }
}
