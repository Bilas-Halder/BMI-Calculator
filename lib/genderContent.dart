import 'package:flutter/material.dart';

const textColor = Color(0xff8d8e98);

class GenderContent extends StatelessWidget {
  final IconData icon;
  final String label;

  GenderContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 90,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: 18,
              color: textColor
          ),
        )
      ],
    );
  }
}
