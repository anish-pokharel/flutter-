import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://www.anishpokharel10.com.np/image/aboutme.png";

    return Drawer(

    child: Container(
      color:Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            // decoration: BoxDecoration(color: Colors.red),
            accountName: Text("anish"),
            accountEmail: Text("anish.pokharel.710.ap@gmail.com"),
            currentAccountPicture:CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ) ,
              )
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,

            ),
            title: Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text("Email Me",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text("Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
    // return const Placeholder();
  }
}
