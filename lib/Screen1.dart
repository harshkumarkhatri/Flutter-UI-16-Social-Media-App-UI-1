// This is the initial screen for the app basically the login signup switcher

import 'package:flutter/material.dart';
import 'package:flutter_ui_16_sushi_social_media_app_ui/Screen2.dart';

import 'Screen3.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(color: Colors.grey[600].withOpacity(0.8)),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Container(
                  child: Center(
                    child: Text(
                      "Sushy",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  child: Center(
                    child: Text(
                      "Social Media App",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w200,
                        letterSpacing: 1.3,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Screen2()));
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 200, left: 15, right: 15),
                  child: Container(
                    height: 60,
                    color: Colors.pink,
                    child: Center(
                      child: Text(
                        "LOG IN",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.3),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Screen3()));
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                  child: Container(
                    height: 60,
                    color: Colors.pink,
                    child: Center(
                      child: Text(
                        "CREATE ACCOUNT",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.3),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
