import 'controller.dart';

class MemberBody {
  static double heigth = 0;
  double sizeCurrent = 0;
  String name;
  List<double> ratio;
  bool wantToIncrease;

  MemberBody(
      {required this.name, required this.ratio, this.wantToIncrease = true});

  double get sizeIdeal => (bodyRatio(this.ratio) * heigth);

  String get sizeIdealStr => sizeIdeal.toStringAsFixed(1) + " cm";

  String get sizeCurrentStr => sizeCurrent.toStringAsFixed(1);

  double get percentualGoal => wantToIncrease
      ? (sizeCurrent / sizeIdeal * 100)
      : (sizeIdeal / sizeCurrent * 100);

  String get percentualGoalStr => percentualGoal.toStringAsFixed(0) + "%";

  // String get b => bodyRatio(this.ratio).toStringAsFixed(3);
}
