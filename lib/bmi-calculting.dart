import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.weight,this.height});

  final int height;
  final int weight;

  // ignore: non_constant_identifier_names
  double _bmi;
  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if (_bmi >= 25){
      return 'OverWeight';
    }
    else if(_bmi > 18.5){
      return 'Normal';
    }
    else{
      return 'UnderWeight';
    }
  }
  String getInterpretation(){
    if (_bmi >= 25){
      return 'You hove a higher than normal body weight. Try to exercise more.';
    }
    else if(_bmi > 18.5){
      return 'you have a normal body weight';
    }
    else{
      return 'You hove a lower than normal body weight. Try to eat a bit more.';
    }
  }
}