import 'dart:math';

class calculateBrain {
  final height;
  final weight;
  calculateBrain({this.height, this.weight});
  late double _bmi;
  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
   String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi <= 18.5) {
      return 'Underweight';
    } else {
      return 'Normal';
    }
  }

  String getSuggestion() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight, Please Do exercise and avoid junk food';
    } else if (_bmi <= 18.5) {
      return 'You have a Lower than normal body weight, Eat a bit more';
    } else {
      return 'Great You have a normal body weight,Try to maintain this body weight';
    }
  }
}
