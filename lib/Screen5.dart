// This file is for the friends screen

import 'package:flutter/material.dart';

import 'Widgets/chatItem.dart';

class Screen5 extends StatefulWidget {
  @override
  _Screen5State createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.pink[600],
        centerTitle: true,
        title: Text("FRIENDS"),
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
                chatItem("Vincent Luna"),
                Divider(
                  thickness: 1.5,
                ),
                chatItem("Francis Clarke"),
                Divider(
                  thickness: 1.5,
                ),
                chatItem(" Ramsey"),
                Divider(
                  thickness: 1.5,
                ),
                chatItem("Lucas Wilson"),
                Divider(
                  thickness: 1.5,
                ),
                chatItem("Nell Luna"),
                Divider(
                  thickness: 1.5,
                ),
                chatItem("Lola Wright"),
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

// Navdrawert class
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
