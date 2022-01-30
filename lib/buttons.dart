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
      constraints: BoxConstraints.tightFor(width: 48.0, height: 48.0),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      elevation: 6.0,
    );
  }
}