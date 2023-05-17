import 'package:flutter/material.dart';

import '/Animation/FadeAnimation.dart';

class LoginButton extends StatefulWidget {
  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool loginSuccess = false;

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      0.5,
      Container(
        height: 50,
        width: 100,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              loginSuccess = true;
            });
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(0), backgroundColor: Color.fromRGBO(143, 148, 251, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Ink(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(143, 148, 251, 1),
                  Color.fromRGBO(143, 148, 251, .6),
                ],
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
