import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String title;
  BottomButton({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFEB1555),
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: bottomHeight,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Color(0xFFF3D7E1),
              fontSize: 24
          ),
        ),
      ),
    );
  }
}