import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(children: [
        Expanded(child: Row(children: [
          Expanded(child: ReuseableCrad()),
          Expanded(child: ReuseableCrad()),
        ],)),



        Expanded(child: ReuseableCrad()),

Expanded(child: Row(children: [
          Expanded(child: ReuseableCrad()),
          Expanded(child: ReuseableCrad()),
        ],)),


      ],),
    );
  }
}

class ReuseableCrad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFF1D1E33),
      ),
    );
  }
}
