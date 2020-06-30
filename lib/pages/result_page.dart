import 'file:///D:/FlutterProjects/bmi-calculator/lib/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0,),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Color(kLighterCardColor),
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                            'Normal BMI Range:',
                          style: kDarkerRangeTextStyle,
                        ),
                        Text(
                            '18.5 -25 kg/m2',
                          style: kDescriptionTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    interpretation,
                    style: kDescriptionTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  FlatButton(
                    child: Text('SAVE RESULTS',style: kDarkerTextStyle,),
                    disabledColor: Color(kDarkerCardColor),
                    padding: EdgeInsets.all(25.0),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonText:
            'RE-CALCULATE YOUR BMI' ,
          ),
        ],
      ),
    );
  }
}
