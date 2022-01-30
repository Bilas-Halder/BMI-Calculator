import 'package:flutter/material.dart';
import 'buttons.dart';
import 'constants.dart';
import 'reusableCard.dart';
import 'main_calculator.dart';

class ResultsPage extends StatelessWidget {
  final weight;
  final height;
  ResultsPage({this.height,this.weight});

  @override
  Widget build(BuildContext context) {
    CalculateBMI bmi = CalculateBMI(height: height,weight: weight);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF0A0E21),
        shadowColor: Color(0xFF272741),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,right: 10),
            child: Text(
              'Your Result',
              style: customNumberStyle,
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: cardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmi.getResult(),
                    style: resultTextStyle,
                  ),
                  Text(
                    bmi.getBMI(),
                    style: bigResultTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      bmi.getInterpretation(),
                      style: resultTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: BottomButton(title: 'Re-Calculate',),
          ),
        ],
      ),
    );
  }
}
