import 'package:flutter/material.dart';

Widget chatItem(name) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Row(
          children: [
            Container(height: 64, width: 64, color: Colors.grey),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  "Last seen 3 hours ago",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 12,
                    letterSpacing: -0.5,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.message, color: Colors.grey[300]),
          ],
        ),
      ),
    );
  }