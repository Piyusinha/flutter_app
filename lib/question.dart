import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class Questions extends StatelessWidget {
  final String textq;
  Questions(this.textq);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:EdgeInsets.all(10),
       child:Text(textq,
    style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ),);
  }
}
