import 'package:flutter/material.dart';


class IconContent extends StatelessWidget {
  const IconContent({this.icon, this.label, this.colour});

  final IconData icon;
  final String label;
  final int colour;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: Color(colour),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(colour),
          ),
        ),
      ],
    );
  }
}