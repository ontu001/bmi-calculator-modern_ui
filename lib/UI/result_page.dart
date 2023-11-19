import 'package:bmi_calculator_starter/Constant%20property/constant.dart';
import 'package:bmi_calculator_starter/widgets/calculate_button.dart';
import 'package:bmi_calculator_starter/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class resultPage extends StatelessWidget {
  //instance for getting data from the user input ========
  final String bmi;
  final String result;
  final String suggestion;
  final int height;
  final int weight;
  final int age;

  const resultPage(
      {super.key,
      required this.bmi,
      required this.result,
      required this.suggestion,
      required this.height,
      required this.weight, required this.age});

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

          //informatioion conatiner=======
          Expanded(
              flex: 5,
              child: ReuseableCrad(
                color: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result,
                      style: kResult,
                    ),
                    Text(
                      "The Normal BMI range is 18.5—24.9",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 250,
                    ),
                    Text(
                      bmi,
                      style: knumTextColor,
                    ),
                    Text("Your height is $height cm and Weight is $weight kg Your age is $age"),
                    SizedBox(
                      height: 160,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        suggestion,
                        textAlign: TextAlign.center,
                        style: klavelTextColor,
                      ),
                    ),
                  ],
                ),
              )),

          //recaklculate button
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
