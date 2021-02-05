import 'package:flutter/material.dart';
import 'package:login_page/Palette/constants.dart';
class ConformPassword extends StatefulWidget {
  @override
  _ConformPasswordState createState() => _ConformPasswordState();
}

class _ConformPasswordState extends State<ConformPassword> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Conform password',
          style: labelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecorationStyle,
          height: 60.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Conform your Password',
              hintStyle: hintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
