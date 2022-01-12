import 'controller.dart';

class MemberBody {
  double sizeCurrent;
  double heigth;
  String name;
  List<double> ratio;
  bool wantToIncrease;

  MemberBody(
      {required this.sizeCurrent,
      required this.heigth,
      required this.name,
      required this.ratio,
      this.wantToIncrease = true});

  double get sizeIdeal => (bodyRatio(this.ratio) * this.heigth);

  String get sizeIdealStr => sizeIdeal.toStringAsFixed(1);

  String get sizeCurrentStr => sizeCurrent.toStringAsFixed(1);

  double get percentualGoal => wantToIncrease
      ? (sizeCurrent / sizeIdeal * 100)
      : (sizeIdeal / sizeCurrent * 100);

  String get percentualGoalStr => percentualGoal.toStringAsFixed(2) + "%";

  // String get b => bodyRatio(this.ratio).toStringAsFixed(3);
}
