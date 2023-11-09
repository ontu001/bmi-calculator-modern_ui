import 'package:flutter/material.dart';

class roundIconButton extends StatelessWidget {
  int weight;
  IconData icon;
  VoidCallback onPressed;
  roundIconButton({required this.weight, required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Color(0xFF4C4F5E),
      elevation: 0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
