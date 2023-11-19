import 'package:bmi_calculator_starter/Constant%20property/constant.dart';
import 'package:bmi_calculator_starter/widgets/calculate_button.dart';
import 'package:bmi_calculator_starter/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class resultPage extends StatelessWidget {
  const resultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 20, left: 15),
              child: const Text(
                "Your Result",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReuseableCrad(
                color: kactiveCardColor,
                cardChild: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "NORMAL",
                      style: kResult,
                    ),
                    Text(
                      "27",
                      style: knumTextColor,
                    ),
                    Text(
                      "YOUR BMI IS HIGHER THAT USUAL PLEASE EAT LESS AND HEALTHEY AND DO EXERCISE",
                      textAlign: TextAlign.center,
                      style: klavelTextColor,
                    )
                  ],
                ),
              )),
          calculateButton(
            txt: "RECALCULTE YOUR BMI",
            ontap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
