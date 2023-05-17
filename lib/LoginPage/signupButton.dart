import 'package:LoginPage/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class SignupButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      0.5,
      Container(
        height: 50,
        width: 100,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Color.fromRGBO(143, 148, 251, .6), padding: EdgeInsets.all(0), backgroundColor: Color.fromRGBO(104, 109, 201, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                "SignUp",
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
