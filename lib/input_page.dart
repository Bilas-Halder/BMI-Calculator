import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'genderContent.dart';
import 'reusableCard.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int c = 0;

  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        shadowColor: Color(0xFF272741),
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    ReusableCard(
                      color: maleCardColor,
                      child: GenderContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      onPressed: () {
                        setState(() {
                          maleCardColor = (maleCardColor != cardColor)
                              ? cardColor
                              : inActiveCardColor;
                          femaleCardColor = inActiveCardColor;
                        });
                      },
                    ),
                    ReusableCard(
                      color: femaleCardColor,
                      child: GenderContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      onPressed: () {
                        setState(() {
                          femaleCardColor = (femaleCardColor != cardColor)
                              ? cardColor
                              : inActiveCardColor;
                          maleCardColor = inActiveCardColor;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    ReusableCard(
                      color: cardColor,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Height',
                              style: customLabelStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  '${height.round()}',
                                  style: customNumberStyle,
                                ),
                                Text(
                                  'Cm',
                                  style: customLabelStyle,
                                ),
                              ],
                            ),
                            Slider(
                              value: height,
                              min: 0,
                              max: 300,
                              label: '${height.round()}',
                              activeColor: Color(0xFFEB1555),
                              inactiveColor: Color(0xFF8D8E98),
                              onChanged: (double value) {
                                setState(() {
                                  height = value;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    ReusableCard(
                      color: cardColor,
                    ),
                    ReusableCard(
                      color: cardColor,
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: bottomHeight,
              )
            ],
          ),
        ),
      ),
    );
  }
}
