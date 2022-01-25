import 'package:flutter/material.dart';
import 'constants.dart';

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
          style: customLabelStyle,
        )
      ],
    );
  }
}
