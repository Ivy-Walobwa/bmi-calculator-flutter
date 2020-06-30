import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/input_page.dart';

void main(){ runApp(
    BMICalculator());
SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  systemNavigationBarColor: Color(0xFF090C22),
));
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
        accentColor: Color(0xFFEA1556),
      ),
      home: InputPage(),
    );
  }
}



