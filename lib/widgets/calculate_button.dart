import 'package:bmi_calculator_starter/Constant%20property/constant.dart';
import 'package:flutter/material.dart';

class calculateButton extends StatelessWidget {
  final VoidCallback? ontap;
  final String txt;
  calculateButton({this.ontap, required this.txt});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(top: 20.0),
        width: double.infinity,
        height: kbottomContainerHeight,
        color: kbottomContainerColor,
        child: Center(
            child: Text(
          txt,
          style: kButtonColor,
        )),
      ),
    );
  }
}
