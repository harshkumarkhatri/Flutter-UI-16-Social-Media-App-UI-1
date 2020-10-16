import 'package:flutter/material.dart';

Widget profileElement(number,identifier) {
  return Column(
    children: [
      Text(
        number,
        style: TextStyle(
          fontSize: 27,
          color: Colors.white,
          letterSpacing: 1.4,
          shadows: <Shadow>[
            Shadow(
              offset: Offset(1.0, 4.0),
              blurRadius: 3.0,
              color: Colors.black26,
            ),
          ],
        ),
      ),
      Text(
        identifier,
        style: TextStyle(
          // fontSize: 27,
          color: Colors.white, letterSpacing: 1.2,
          shadows: <Shadow>[
            Shadow(
              offset: Offset(1.0, 4.0),
              blurRadius: 3.0,
              color: Colors.black38,
            ),
          ],
        ),
      )
    ],
  );
}
