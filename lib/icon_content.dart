import 'package:flutter/material.dart';

const myTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  final IconData myIcon;
  final String myText;
  IconContent({this.myIcon, this.myText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          myText,
          style: myTextStyle,
        ),
      ],
    );
  }
}
