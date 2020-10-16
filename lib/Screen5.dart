import 'package:flutter/material.dart';

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
              delegate: SliverChildListDelegate([
            HeaderWidget("hulla"),
            Container(height: 400, color: Colors.yellow),
            Container(
              height: 500,
              color: Colors.black,
            )
          ]))
        ],
      )),
    );
  }

  Widget HeaderWidget(text) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
          // height: 150,
          color: Colors.pink[50],
          child: Row(
            children: [Container(height: 64,width:64, color: Colors.yellow)],
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
