import 'package:bmi_calculator_starter/widgets/input_widgets.dart';
import 'package:bmi_calculator_starter/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);

//declear enum

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color selecetdColor = inActiveCardColor;
  Gender selecetedGender = Gender.none;

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
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selecetedGender = Gender.male;
                  });
                },
                child: ReuseableCrad(
                  color: selecetedGender == Gender.male?activeCardColor:inActiveCardColor,
                  cardChild: InputWidget(
                      icon: FontAwesomeIcons.mars,
                      color: Colors.white,
                      label: "MALE"),
                ),
              )),

              //=============
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selecetedGender = Gender.female;
                  });
                },
                child: ReuseableCrad(
                  color: selecetedGender == Gender.female?activeCardColor:inActiveCardColor,
                  cardChild: InputWidget(
                      icon: FontAwesomeIcons.venus,
                      color: Colors.white,
                      label: "FEMALE"),
                ),
              )),
            ],
          )),

          //======================
          Expanded(
              child: ReuseableCrad(
            color: activeCardColor,
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReuseableCrad(
                color: activeCardColor,
              )),
              Expanded(
                  child: ReuseableCrad(
                color: activeCardColor,
              )),
            ],
          )),

          //calculate button
          Container(
            width: double.infinity,
            height: bottomContainerHeight,
            color: bottomContainerColor,
          ),
        ],
      ),
    );
  }
}
