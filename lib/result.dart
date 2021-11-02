import 'package:bmi_calculator/bottom_calculate.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiTextResult;
  final String bmiResult;
  final String bmiFeedback;
  ResultPage(
      {@required this.bmiTextResult,
      @required this.bmiResult,
      @required this.bmiFeedback});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Reslut',
                style: resultText,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              bmicolour: activeCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiTextResult,
                    style: bmitextGreen,
                  ),
                  Text(
                    bmiResult,
                    style: bmiText,
                  ),
                  Text(
                    bmiFeedback,
                    style: bmiBodyText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomCalculate(
            title: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
