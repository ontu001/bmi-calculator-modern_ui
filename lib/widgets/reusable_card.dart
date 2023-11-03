import 'package:flutter/material.dart';

class ReuseableCrad extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final VoidCallback? ontap;
  ReuseableCrad({required this.color, this.cardChild, this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: cardChild,
      ),
    );
  }
}
