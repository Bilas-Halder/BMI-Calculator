import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'genderContent.dart';
import 'reusableCard.dart';
import 'constants.dart';
import 'result_page.dart';
import 'buttons.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int c = 0;

  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;
  double height = 50;
  int weight = 50;
  int age = 18;

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
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  thumbColor: Color(0xFFEB1555),
                                  activeTrackColor: Color(0xD0FFFFFF),
                                  overlayColor: Color(0x29EB1555),
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 13),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 25)),
                              child: Slider(
                                value: height,
                                min: 50,
                                max: 300,
                                label: '${height.round()}',
                                inactiveColor: Color(0xFF8D8E98),
                                onChanged: (double value) {
                                  setState(() {
                                    height = value;
                                  });
                                },
                              ),
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Weight',
                              style: customLabelStyle,
                            ),
                            Text(
                              '${weight.round()}',
                              style: customNumberStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: (){
                                    setState(() {
                                      weight+=1;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: (){
                                    setState(() {
                                      weight-=1;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    ReusableCard(
                      color: cardColor,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Age',
                              style: customLabelStyle,
                            ),
                            Text(
                              '${age.round()}',
                              style: customNumberStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: (){
                                    setState(() {
                                      age+=1;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: (){
                                    setState(() {
                                      age-=1;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> ResultsPage())
                  );
                },
                child: BottomButton(title: 'Calculate Your BMI',),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  RoundIconButton({this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: () {
        if (this.onPressed != null) onPressed();
      },
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      elevation: 6.0,
    );
  }
}
