import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 70.0;
const bottomContainerColor = Color(0xFFBE1555);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Gender selectedGender;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      bmicolour: selectedGender == Gender.male
                          ? inactiveCardColor
                          : activeCardColor,
                      childCard: IconContent(
                        myIcon: FontAwesomeIcons.mars,
                        myText: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      bmicolour: selectedGender == Gender.female
                          ? inactiveCardColor
                          : activeCardColor,
                      childCard: IconContent(
                        myIcon: FontAwesomeIcons.venus,
                        myText: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              bmicolour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    bmicolour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    bmicolour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Color(0xFFBE1555),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
