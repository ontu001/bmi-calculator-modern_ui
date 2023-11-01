import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;
  InputWidget({ required this.icon,  this.color = Colors.white, required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
        color: color,
        size: 80.0,
        ),
        SizedBox(height: 10.0,),
        Text(label,style: TextStyle(fontSize: 20),)
      ],
    );
  }
}
