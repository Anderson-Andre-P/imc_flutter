import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double kBottomContainerHeight = 80.0;
const Color kBottomContainerColor = Color(0xFFEB1555);
const Color kActiveCardColor = Color(0xFF1D1E33);
const Color kInactiveCardColor = Color(0xFF111328);
String platformVersion = "";

enum Gender {
  Male,
  Female,
}

String aboutBMI =
    "Índice de Massa Corporal (IMC) é um valor derivado do peso e altura da pessoa." +
        "O resultado da medição do IMC pode dar uma ideia sobre se uma pessoa tem o peso correto para sua altura.";

Icon themeIcon = Icon(
  FontAwesomeIcons.solidMoon,
  color: Colors.transparent,
);

const kLabelTextStyle = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF8D8E98),
);

const listHeading =
    TextStyle(fontSize: 18.0, color: Colors.grey, fontWeight: FontWeight.w900);

const listTitle = TextStyle(
    fontSize: 16.0, color: Colors.grey, fontWeight: FontWeight.normal);

const listTrailing =
    TextStyle(fontSize: 14.0, color: Colors.grey, fontWeight: FontWeight.w900);

const kNumberTextStyle = TextStyle(
    color: Color.fromRGBO(81, 84, 104, 1),
    fontSize: 50.0,
    fontWeight: FontWeight.w900);

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const kResultBodyTextStyle = TextStyle(
  fontSize: 22.0,
);
