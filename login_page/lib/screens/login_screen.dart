import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_page/Widgets/authPageBackground.dart';
import 'package:login_page/Widgets/enterEmail.dart';
import 'package:login_page/Widgets/enterPassword.dart';
import 'package:login_page/Widgets/forgotPassword.dart';
import 'package:login_page/Widgets/loginButton.dart';
import 'package:login_page/Widgets/logoSpace.dart';
import 'package:login_page/Widgets/rememberMeCheckbox.dart';
import 'package:login_page/utilities/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _newUser() {
    return Text(
      'New user ?',
      style: labelStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              BackgroundGradient(),
              Container(
                //height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 100.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //SizedBox(height: 60),
                      LogoSpace(),
                      SizedBox(height: 30.0),
                      EnterEmail(),
                      SizedBox(height: 30.0),
                      EnterPassword(),
                      ForgotPassword(),
                      RememberMeCheckbox(),
                      LoginButton(),
                      _newUser(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
