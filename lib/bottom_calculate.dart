import 'package:flutter/material.dart';
import 'constants.dart';

class BottomCalculate extends StatelessWidget {
  final String title;
  final Function onTap;
  BottomCalculate({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: bottomTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: Color(0xFFBE1555),
        height: bottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
