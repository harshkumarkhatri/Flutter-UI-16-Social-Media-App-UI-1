// This file is for the profile page screen

import 'package:flutter/material.dart';
import 'package:flutter_ui_16_sushi_social_media_app_ui/Screen10.dart';
import 'package:flutter_ui_16_sushi_social_media_app_ui/Screen5.dart';
import 'package:flutter_ui_16_sushi_social_media_app_ui/Screen6.dart';
import 'package:flutter_ui_16_sushi_social_media_app_ui/Screen8.dart';
import 'package:flutter_ui_16_sushi_social_media_app_ui/Widgets/profileElements.dart';

import 'Widgets/rectangle.dart';
import 'Widgets/squares.dart';

class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 280,
          backgroundColor: Colors.grey,
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: [
                SizedBox(height: 120),
                Text(
                  "Sadie Reed",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 1.4,
                    fontWeight: FontWeight.w600,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, .5),
                        blurRadius: 3.0,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "NEW YORK, USA",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.4,
                    fontWeight: FontWeight.w600,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, .5),
                        blurRadius: 3.0,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      profileElement("958", "Friends"),
                      profileElement("521", "Videos"),
                      profileElement("18k", "Followers"),
                      profileElement("856", "Photos")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Screen5()));
                  },
                  child: squares()),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Screen6()));
                  },
                  child: rectangle()),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Screen8()));
                  },
                  child: squares()),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Screen10()));
                  },
                  child: rectangle()),
              squares(),
              rectangle(),
              squares()
            ],
          ),
        ),
      ],
    ));
  }
}
