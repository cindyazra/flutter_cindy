import 'package:flutter/material.dart';

import 'verificationFields.dart';
import 'loginButton.dart';
import 'signupPage.dart';
import 'loginDecoration.dart';
import '../Animation/FadeAnimation.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _pageLogin = true;
  // bool _rememberPassword = false;

  void _togglePage(bool _switchme) {
    setState(() {
      _pageLogin = _switchme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              LoginDecoration(),
              FadeAnimation(
                0.5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        _togglePage(true);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: _pageLogin
                            ? Color.fromRGBO(143, 148, 251, 1)
                            : Colors.transparent,
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: _pageLogin
                              ? Colors.white
                              : Color.fromRGBO(143, 148, 251, 1),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        _togglePage(false);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: _pageLogin
                            ? Colors.transparent
                            : Color.fromRGBO(143, 148, 251, 1),
                      ),
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          color: _pageLogin
                              ? Color.fromRGBO(143, 148, 251, 1)
                              : Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              _pageLogin
                  ? Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        children: <Widget>[
                          VerificationFields(),
                          FadeAnimation(
                            0.5,
                            Container(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: TextButton(
                                onPressed: () => {},
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Color.fromRGBO(143, 148, 251, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          LoginButton(),
                        ],
                      ),
                    )
                  : SignupPage(),
            ],
          ),
        ),
      ),
    );
  }
}
