import 'dart:math';

final _golden_ratio = (1 + sqrt(5)) / 2;

double _golderRatioElevation(double n) {
  return pow(_golden_ratio, n).toDouble();
}

double bodyRatio(List<double> ratio) {
  return ratio
      .map((e) => 1 / _golderRatioElevation(e))
      .reduce((value, element) => value + element);
}
