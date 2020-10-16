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
      appBar: AppBar(
        backgroundColor: Colors.pink[600],
        centerTitle: true,
        title: Text("Friends"),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
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
