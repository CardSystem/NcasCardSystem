import 'package:flutter/material.dart';
import 'package:login_page/utilities/constants.dart';
class LogoSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 140,
      decoration: boxDecorationStyle,
      child: CircleAvatar(
        //backgroundImage: AssetImage(""),
      )
    );
  }
}
