import 'controller.dart';

enum Gender { male, female }

class MemberBody {
  static double heigth = 0;
  static Gender gender = Gender.male;
  double sizeCurrent = 0;
  String name;
  List<double> ratioMale;
  List<double> ratioFemale;
  bool wantToIncrease;

  MemberBody(
      {required this.name,
      required this.ratioMale,
      required this.ratioFemale,
      this.wantToIncrease = true});

  double get sizeIdeal => gender == Gender.male
      ? (bodyRatio(ratioMale) * heigth)
      : (bodyRatio(ratioFemale) * heigth);

  String get sizeIdealStr => sizeIdeal.toStringAsFixed(1) + " cm";

  String get sizeCurrentStr => sizeCurrent.toStringAsFixed(1);

  double get percentualGoal => wantToIncrease
      ? (sizeCurrent / sizeIdeal * 100)
      : (sizeIdeal / sizeCurrent * 100);

  String get percentualGoalStr => percentualGoal.toStringAsFixed(0) + "%";

  // String get b => bodyRatio(this.ratio).toStringAsFixed(3);
}
