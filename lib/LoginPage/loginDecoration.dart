import 'package:flutter/material.dart';

import '/Animation/FadeAnimation.dart';

class LoginDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Stack(
        children: [
          Positioned(
            child: FadeAnimation(
              1.6,
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Center(
                  child: Text(
                    "Twittard",
                    style: TextStyle(
                        color: Color.fromRGBO(143, 148, 251, 1),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
