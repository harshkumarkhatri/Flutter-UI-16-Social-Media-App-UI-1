import 'package:flutter/material.dart';

  Widget squares() {
    return Container(
        height: 195,
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 15,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(child: const Text("He'd have you all unravel at the")),
              color: Colors.grey,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(child: const Text('Heed not the rabble')),
              color: Colors.grey,
            ),
          ],
        ));
  }