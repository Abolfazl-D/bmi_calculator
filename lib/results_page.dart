import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import 'bottom_buttom.dart';
import 'resuable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.interpretation, @required this.bmiResult, @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: KTitleTextStyle,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: KactiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText.toUpperCase(),
                        style: KResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: KBMITextStyle,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: KBodyTextStyle,
                      ),
                      BottomButtom(onTap: () {
                        Navigator.pop(context);
                      }
                          , buttonTitle: 'RE-CALCULATE')
                    ],
                  ),
                ))
          ],
        ));
  }
}
