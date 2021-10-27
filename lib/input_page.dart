import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

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
                  child: ReusableCard(
                    bmicolour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    bmicolour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              bmicolour: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    bmicolour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    bmicolour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color bmicolour;
  ReusableCard({@required this.bmicolour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: bmicolour,
      ),
    );
  }
}
