import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'genderContent.dart';

const cardColor = Color(0xFF1D1E33);
const bottomHeight = 80.0;
const textColor = Color(0xff8d8e98);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Card(
                      color: cardColor,
                      child: GenderContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      callback: (){
                        print('pressed');
                      },
                    ),
                    Card(
                      color: cardColor,
                      child: GenderContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Card(
                      color: cardColor,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Card(
                      color: cardColor,
                    ),
                    Card(
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

class Card extends StatelessWidget {
  final Color color;
  final Widget child;
  final void Function() callback;
  //constructor
  Card({@required this.color, this.child, this.callback });

  Function getOnTap(){
    print(callback);
    if(callback==null)return () {};
    else return callback;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: getOnTap,
        child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: this.child,
        ),
      ),
    );
  }
}
