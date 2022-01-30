import 'package:flutter/material.dart';
import 'buttons.dart';
import 'constants.dart';
import 'reusableCard.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        shadowColor: Color(0xFF272741),
        title: Center(child: Text('BMI CALCULATOR       ')),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
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
                      'OverWeight',
                      style: resultTextStyle,
                    ),
                    Text(
                      '21.5',
                      style: bigResultTextStyle,
                    ),
                    Text(
                      'Your Bmi Is Good',
                      style: resultTextStyle,
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
      ),
    );
  }
}
