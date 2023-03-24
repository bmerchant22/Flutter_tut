import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text(
                    "Burhanuddin Merchant",
                    style: TextStyle(
                      fontSize: 23
                    ),
                  ),
                  accountEmail: Text("merchantburhanuddin484@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://drive.google.com/uc?export=view&id=1g3lg0M596WG0mAowZiRZZs8hSOwk8uB9"),
                  ),
                )
            ),
            ListTile(
              leading: Icon(
                  CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                  CupertinoIcons.profile_circled,
              color: Colors.white,
                  ),
              title: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                  CupertinoIcons.mail_solid,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            )
    ]
        ),
      ),
    );
  }
}
