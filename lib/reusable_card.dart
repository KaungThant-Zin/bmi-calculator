import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color bmicolour;
  final Widget childCard;
  ReusableCard({@required this.bmicolour, this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: bmicolour,
      ),
    );
  }
}
