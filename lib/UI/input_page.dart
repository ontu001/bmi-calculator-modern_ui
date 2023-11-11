import 'package:bmi_calculator_starter/Constant%20property/constant.dart';
import 'package:bmi_calculator_starter/UI/result_page.dart';
import 'package:bmi_calculator_starter/widgets/height_slider.dart';
import 'package:bmi_calculator_starter/widgets/input_widgets.dart';
import 'package:bmi_calculator_starter/widgets/reusable_card.dart';
import 'package:bmi_calculator_starter/widgets/round__icon_-button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//declear enum

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color selecetdColor = kinActiveCardColor;
  Gender selecetedGender = Gender.none;
  int height = 180;
  int weight = 65;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          //Gender section
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReuseableCrad(
                ontap: () {
                  setState(() {
                    selecetedGender = Gender.male;
                  });
                },
                color: selecetedGender == Gender.male
                    ? kactiveCardColor
                    : kinActiveCardColor,
                cardChild: InputWidget(
                    icon: FontAwesomeIcons.mars,
                    color: Colors.white,
                    label: "MALE"),
              )),

              //=============
              Expanded(
                  child: ReuseableCrad(
                ontap: () {
                  setState(() {
                    selecetedGender = Gender.female;
                  });
                },
                color: selecetedGender == Gender.female
                    ? kactiveCardColor
                    : kinActiveCardColor,
                cardChild: InputWidget(
                    icon: FontAwesomeIcons.venus,
                    color: Colors.white,
                    label: "FEMALE"),
              )),
            ],
          )),

          //======================
          Expanded(
              child: ReuseableCrad(
            color: kactiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HEIGHT",
                  style: klavelTextColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$height',
                      style: knumTextColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'cm',
                      style: klavelTextColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                //slider=======
                heightSlider(
                    height: height,
                    onChanged: (newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    })
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: [
              //weight===========================
              Expanded(
                child: ReuseableCrad(
                  color: kactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: klavelTextColor,
                      ),
                      Text(
                        '$weight',
                        style: knumTextColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          roundIconButton(
                              weight: weight,
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              }),
                          roundIconButton(
                              weight: weight,
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //age===================
              Expanded(
                  child: ReuseableCrad(
                color: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "AGE",
                      style: klavelTextColor,
                    ),
                    Text(
                      '$age',
                      style: knumTextColor,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        roundIconButton(
                            weight: weight,
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            }),
                        roundIconButton(
                            weight: weight,
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          )),

          //calculate button
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => resultPage()));
            },
            child: Container(
              width: double.infinity,
              height: kbottomContainerHeight,
              color: kbottomContainerColor,
              child: Center(
                  child: Text(
                "CALCULATE YOUR BMI",
                style: kButtonColor,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
