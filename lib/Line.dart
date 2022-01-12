import 'package:flutter/material.dart';
import 'package:ideal_proportion/model.dart';

class Line extends StatelessWidget {
  MemberBody memberBody;

  Line({
    Key? key,
    required this.memberBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("${memberBody.name}"),
        Text("${memberBody.sizeCurrentStr}"),
        Text("${memberBody.sizeIdealStr}"),
        Text("${memberBody.percentualGoalStr}"),
      ],
    );
  }
}
