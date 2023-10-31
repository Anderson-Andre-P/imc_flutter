import 'dart:math';

import 'package:flutter/material.dart';

class BmiUtil {
  final int height;
  final double weight;
  final bool isKg;

  late double _bmi;

  BmiUtil({
    required this.height,
    required this.weight,
    required this.isKg,
  });

  static int feetInchToCM(int feet, int inch) {
    int totalInch = ((feet * 12) + inch);
    return (totalInch * 2.54).round();
  }

  String calculateBMI() {
    if (isKg) {
      _bmi = weight / pow(height / 100, 2);
    } else {
      _bmi = (weight * 0.45359237) / pow(height / 100, 2);
    }
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi <= 16) {
      return 'MUITO ABAIXO DO PESO';
    } else if (_bmi > 16.0 && _bmi <= 16.9) {
      return 'SEVERAMENTE ABAIXO DO PESO';
    } else if (_bmi > 17.0 && _bmi <= 18.4) {
      return 'ABAIXO DO PESO';
    } else if (_bmi > 18.5 && _bmi <= 24.9) {
      return 'NORMAL';
    } else if (_bmi > 25.0 && _bmi <= 29.9) {
      return 'SOBREPESO';
    } else if (_bmi > 30.0 && _bmi <= 34.9) {
      return 'OBESO Classe 1 \n(Moderadamente obeso)';
    } else if (_bmi > 35.0 && _bmi <= 39.9) {
      return 'OBESO Classe 2 \n(Obesidade grave)';
    } else if (_bmi >= 40.0) {
      return 'OBESO Classe 3 \n(Obesidade muito grave)';
    } else {
      return 'NORMAL';
    }
  }

  TextStyle resultTextStyle(String result) {
    switch (result) {
      case "MUITO ABAIXO DO PESO":
        return TextStyle(
          color: Color.fromRGBO(241, 198, 231, 1),
          fontWeight: FontWeight.w700,
          letterSpacing: 2.0,
          fontSize: 22.0,
        );
      case "SEVERAMENTE ABAIXO DO PESO":
        return TextStyle(
          color: Color.fromRGBO(229, 176, 234, 1),
          fontWeight: FontWeight.w700,
          letterSpacing: 2.0,
          fontSize: 22.0,
        );
      case "ABAIXO DO PESO":
        return TextStyle(
          color: Color.fromRGBO(189, 131, 206, 1),
          fontWeight: FontWeight.w700,
          letterSpacing: 2.0,
          fontSize: 22.0,
        );
      case "NORMAL":
        return TextStyle(
          color: Color.fromRGBO(82, 222, 151, 1),
          fontWeight: FontWeight.w700,
          letterSpacing: 2.0,
          fontSize: 22.0,
        );
      case "SOBREPESO":
        return TextStyle(
          color: Color.fromRGBO(241, 188, 49, 1),
          fontWeight: FontWeight.w700,
          letterSpacing: 2.0,
          fontSize: 22.0,
        );
      case "OBESO Classe 1 \n(Moderadamente obeso)":
        return TextStyle(
          color: Color.fromRGBO(226, 88, 34, 1),
          fontWeight: FontWeight.w700,
          letterSpacing: 2.0,
          fontSize: 22.0,
        );
      case "OBESO Classe 2 \n(Obesidade grave)":
        return TextStyle(
          color: Color.fromRGBO(178, 34, 34, 1),
          fontWeight: FontWeight.w700,
          letterSpacing: 2.0,
          fontSize: 22.0,
        );
      case "OBESO Classe 3 \n(Obesidade muito grave)":
        return TextStyle(
          color: Color.fromRGBO(124, 10, 2, 1),
          fontWeight: FontWeight.w700,
          letterSpacing: 2.0,
          fontSize: 22.0,
        );
      default:
        return TextStyle(
          color: Color.fromRGBO(0, 251, 182, 1),
          fontWeight: FontWeight.w700,
          letterSpacing: 2.0,
          fontSize: 22.0,
        );
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Você tem um peso corporal acima do normal. Tente se exercitar mais!';
    } else if (_bmi > 18.5) {
      return 'Você tem um peso corporal normal. Bom trabalho!';
    } else {
      return 'Você tem um peso corporal inferior ao normal. Você deve comer mais!';
    }
  }
}
