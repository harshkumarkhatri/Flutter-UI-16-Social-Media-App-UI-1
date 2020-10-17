import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Widget commentItem(name, context) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      // height: 150,
      // color: Colors.pink[50],
      child: Row(
        children: [
          Container(height: 84, width: 84, color: Colors.grey),
          SizedBox(width: 15),
          Expanded(
            child: Column(
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
                Container(
                  child: Text(
                    "These is very adorable. i am loving this. Sometimes this pictures just are beautiful.",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    style: TextStyle(
                      color: Colors.grey[600].withOpacity(0.8),
                      fontSize: 16,
                      letterSpacing: -0.3,
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    Icon(Icons.watch_later, size: 7, color: Colors.grey),
                    SizedBox(width: 2),
                    Text(
                      "10 minutes ago",
                      style: TextStyle(
                        fontSize: 9,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.remove_red_eye_outlined,
                        size: 7, color: Colors.grey),
                    SizedBox(width: 2),
                    Text(
                      "4.5K",
                      style: TextStyle(
                        fontSize: 9,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.comment, size: 7, color: Colors.grey),
                    SizedBox(width: 2),
                    Text(
                      "1.1K",
                      style: TextStyle(
                        fontSize: 9,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
