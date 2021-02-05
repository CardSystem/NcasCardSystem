import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_page/Palette/PageBackground.dart';
import 'package:login_page/Palette/constants.dart';
import 'package:login_page/Widgets/conformPassword.dart';
import 'package:login_page/Widgets/enterEmail.dart';
import 'package:login_page/Widgets/enterPassword.dart';
import 'package:login_page/Widgets/enterUsername.dart';
import 'package:login_page/Widgets/forgotPassword.dart';
import 'package:login_page/Widgets/logoSpace.dart';
import 'package:login_page/Widgets/rememberMeCheckbox.dart';

class SighupScreen extends StatefulWidget {
  @override
  _SighupScreenState createState() => _SighupScreenState();
}

class _SighupScreenState extends State<SighupScreen> {
  Widget _logIn() {
    return GestureDetector(
      child: Text(
        'Login',
        style: labelStyle,
      ),
      onTap: ()=>{
        print("login Clicked")
        //Navigator.pushReplacementNamed()
      },
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
                      SizedBox(height: 20.0),
                      EnterUsername(),
                      SizedBox(height: 20),
                      EnterEmail(),
                      SizedBox(height: 20.0),
                      EnterPassword(),
                      SizedBox(height: 20),
                      ConformPassword(),
                      SizedBox(height: 20),
                      RememberMeCheckbox(),
                      _logIn(),
                      //LoginButton(),
                      //_newUser(),
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
