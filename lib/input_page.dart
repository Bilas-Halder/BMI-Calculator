import 'package:flutter/material.dart';


const cardColor = Color(0xFF1D1E33);
const bottomHeight = 80.0;

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
                    ),
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
  //constructor
  Card({this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
