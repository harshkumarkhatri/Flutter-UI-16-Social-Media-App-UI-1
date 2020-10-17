// This screen is for the blog comments screen

import 'package:flutter/material.dart';

import 'Widgets/commentItem.dart';

class Screen9 extends StatefulWidget {
  @override
  _Screen9State createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.pink[600],
        centerTitle: true,
        title: Text("BLOG COMMENTS"),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/b/bf/Mona_Lisa-restored.jpg",
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Lost on the Road to the mountains",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        letterSpacing: 1.4,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          "On: March 31st, 2016",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            letterSpacing: 1.3,
                          ),
                        ),Spacer(),
                        Icon(
                          Icons.thumb_up_alt_outlined,
                          color: Colors.white54,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "4.5K",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 9),
                        Icon(Icons.comment_rounded, color: Colors.white54),
                        SizedBox(width: 3),
                        Text(
                          "1.1K",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            commentItem("Vincent Luna", context),
            Divider(
              thickness: 1.5,
            ),
            commentItem("Francis Clarke", context),
            Divider(
              thickness: 1.5,
            ),
            commentItem(" Ramsey", context),
            Divider(
              thickness: 1.5,
            ),
            commentItem("Lucas Wilson", context),
            Divider(
              thickness: 1.5,
            ),
            commentItem("Nell Luna", context),
            Divider(
              thickness: 1.5,
            ),
            commentItem("Lola Wright", context),
            Divider(
              thickness: 1.5,
            ),
          ],
        ),
      ),
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
