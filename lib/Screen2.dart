import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
          children: [
            Container(
              height: 0.8 * MediaQuery.of(context).size.height / 2,
              color: Colors.grey[600].withOpacity(
                0.8,
              ),
              child: Center(
                child: Text(
                  "Sushy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.8,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60, left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle:
                      TextStyle(color: Colors.grey[700], letterSpacing: 1.4),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle:
                      TextStyle(color: Colors.grey[700], letterSpacing: 1.4),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 15, right: 15),
              child: Container(
                height: 60,
                color: Colors.pink,
                child: Center(
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.3),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "Not a member yet? Create account",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  letterSpacing: 1.1,fontWeight: FontWeight.w400
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
