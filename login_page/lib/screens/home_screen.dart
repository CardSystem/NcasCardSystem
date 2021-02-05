import 'package:flutter/material.dart';
import 'package:login_page/Palette/PageBackground.dart';
import 'package:login_page/Palette/constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundGradient(),
        Center(
          child: Text(
            'Home page',
            style: labelStyle,
          ),
        )
      ],
    );
  }
}
