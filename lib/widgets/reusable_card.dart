import 'package:flutter/material.dart';

class ReuseableCrad extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  ReuseableCrad({required this.color, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: cardChild,
    );
  }
}
