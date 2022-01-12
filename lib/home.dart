import 'package:flutter/material.dart';
import 'package:ideal_proportion/model.dart';

import 'Line.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const height = 179.0;
    return Scaffold(
      body: Column(
        children: [
          Line(
            memberBody: MemberBody(
                name: "Peito",
                sizeCurrent: 96.2,
                heigth: height,
                ratio: [2, 3]),
          ),
          Line(
            memberBody: MemberBody(
                name: "Abdômem",
                sizeCurrent: 94.5,
                heigth: height,
                ratio: [2, 5],
                wantToIncrease: false),
          ),
          Line(
            memberBody: MemberBody(
                name: "Coxa", sizeCurrent: 57, heigth: height, ratio: [2]),
          ),
          Line(
            memberBody: MemberBody(
                name: "Braço",
                sizeCurrent: 30.7,
                heigth: height,
                ratio: [4, 5]),
          ),
        ],
      ),
    );
  }
}
