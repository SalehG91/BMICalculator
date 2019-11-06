import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double bmi;

  String calcBmi() {
    bmi = (weight / pow((height / 100), 2));
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'overweight!';
    } else if (bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getComment() {
    if (bmi >= 25) {
      return 'you need to lose weight to become healthier';
    } else if (bmi >= 18.5) {
      return 'good job, you are in good shape!';
    } else {
      return 'you need to gain weight';
    }
  }
}
