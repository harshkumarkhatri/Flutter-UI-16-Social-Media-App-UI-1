import 'package:flutter/material.dart';

 Widget rectangle() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, ),
      child: Container(
        height: 195,
        color: Colors.grey,
        child: Center(child: Text("Hey")),
      ),
    );
  }