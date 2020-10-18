// This file is for the comments screen

import 'package:flutter/material.dart';
import 'package:flutter_ui_16_sushi_social_media_app_ui/Widgets/commentItem.dart';

import 'Widgets/commentItem.dart';

class Screen6 extends StatefulWidget {
  @override
  _Screen6State createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.pink[600],
        centerTitle: true,
        title: Text("COMMENTS"),
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
      body: Container(
          child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                commentItem("Vincent Luna",context),
                Divider(
                  thickness: 1.5,
                ),
                commentItem("Francis Clarke",context),
                Divider(
                  thickness: 1.5,
                ),
                commentItem(" Ramsey",context),
                Divider(
                  thickness: 1.5,
                ),
                commentItem("Lucas Wilson",context),
                Divider(
                  thickness: 1.5,
                ),
                commentItem("Nell Luna",context),
                Divider(
                  thickness: 1.5,
                ),
                commentItem("Lola Wright",context),
                Divider(
                  thickness: 1.5,
                ),
              ],
            ),
          ),
        ],
      )),
    );
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
