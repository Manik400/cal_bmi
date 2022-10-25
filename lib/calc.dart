import 'dart:math';
import 'package:flutter/material.dart';

class Caal {
  Caal({required this.hght , required this.wght});
  final int hght;
  final int wght;

  double bmi=0;
  String ccll(){
    bmi = wght/ pow(hght/100 , 2);
    return bmi.toStringAsFixed(1);
  }
  String gtrslt(){
    if(bmi >= 25){
      return 'overweight';
    }
    else if(bmi > 18.5){
      return'normal';
    }
    else {return ' underweight';}
  }
}