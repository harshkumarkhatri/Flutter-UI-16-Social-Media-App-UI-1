// This screen is for the blog screen

import 'package:flutter/material.dart';
import 'package:flutter_ui_16_sushi_social_media_app_ui/Screen9.dart';

import 'Widgets/commentItem.dart';

class Screen8 extends StatefulWidget {
  @override
  _Screen8State createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.pink[600],
          centerTitle: true,
          title: Text("BLOG"),
          actions: [
            PopupMenuButton<String>(
              onSelected: handleClick,
              itemBuilder: (BuildContext context) {
                return {'Logout', 'Settings'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/b/bf/Mona_Lisa-restored.jpg",
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Text(
                      "Relaxing in the beautiful place",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: Text(
                    "On: March 31st, 2016",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 1.3,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15, bottom: 50),
                  child: Row(
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.white54,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "4.5K",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 5),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Screen9()));
                          },
                          child: Icon(Icons.comment_rounded,
                              color: Colors.white54)),
                      SizedBox(width: 2),
                      Text(
                        "1.1K",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }

  void handleClick(String value) {
    switch (value) {
      case 'Logout':
        break;
      case 'Settings':
        break;
    }
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.pink,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 120,
              color: Colors.pink,
              padding: EdgeInsets.all(12),
              child: Text(
                "Sushy",
                style: TextStyle(
                  letterSpacing: 1.4,
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                ),
              ),
              alignment: Alignment.bottomLeft,
            ),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading:
                    Icon(Icons.supervised_user_circle, color: Colors.white),
                title: Text(
                  'Profile',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading: Icon(Icons.image_outlined, color: Colors.white),
                title: Text(
                  'Gallery',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading: Icon(Icons.upload_file, color: Colors.white),
                title: Text(
                  'Upload',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading: Icon(Icons.supervised_user_circle_sharp,
                    color: Colors.white),
                title: Text(
                  'Friends',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading: Icon(Icons.search, color: Colors.white),
                title: Text(
                  'Search',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading: Icon(Icons.notifications_none_outlined,
                    color: Colors.white),
                title: Text(
                  'Notifications',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading: Icon(Icons.settings_outlined, color: Colors.white),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
            SizedBox(height: 65),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text(
                  'Log Out',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
