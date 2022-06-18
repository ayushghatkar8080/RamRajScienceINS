import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imgurl =
        "https://scontent-lga3-2.cdninstagram.com/v/t51.2885-19/260062172_651335009445003_3287537056778632223_n.jpg?_nc_ht=scontent-lga3-2.cdninstagram.com&_nc_cat=103&_nc_ohc=688cRd0bI9sAX9ax_ZB&edm=AEF8tYYBAAAA&ccb=7-5&oh=00_AT-fFykdiDku3R6zyqaW_AlUvxG6-bY579lcObjmxlc-Kw&oe=62B470AE&_nc_sid=a9513d";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "Ayush Ghatkar",
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text("ayushghatkar1234@gmail.com",
                    style: TextStyle(color: Colors.white)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgurl),
                ),
                margin: EdgeInsets.zero,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
