import 'package:flutter/material.dart';
import 'package:workplace/homepage.dart';

void main() {
  runApp(Workplace());
}

class Workplace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
