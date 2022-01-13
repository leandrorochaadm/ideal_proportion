import 'package:flutter/material.dart';
import 'package:ideal_proportion/model.dart';

import 'Line.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender? _gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 24.0, 8.0, 8.0),
              child: Text(
                "Medidas do corpo ideal",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Theme.of(context).colorScheme.primary),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  RadioListTile<Gender>(
                      title: const Text('Masculino'),
                      dense: true,
                      value: Gender.male,
                      groupValue: _gender,
                      onChanged: (Gender? v) {
                        setState(() {
                          _gender = v;
                          MemberBody.gender = _gender!;
                          print(_gender);
                        });
                      }),
                  RadioListTile<Gender>(
                      title: const Text('Feminino'),
                      dense: true,
                      value: Gender.female,
                      groupValue: _gender,
                      onChanged: (Gender? v) {
                        setState(() {
                          _gender = v;
                          MemberBody.gender = _gender!;
                          print(_gender);
                        });
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (v) {
                  setState(() {
                    MemberBody.heigth = double.parse(v);
                  });
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    suffix: Text("cm"),
                    labelText: "Altura (cm)",
                    border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Line(
              memberBody: MemberBody(
                  name: "Peitoral (cm)",
                  ratioMale: [2, 3],
                  ratioFemale: [2, 4]),
            ),
            Line(
              memberBody: MemberBody(
                  name: "Cintura (cm)",
                  ratioMale: [2, 5],
                  ratioFemale: [2, 5],
                  wantToIncrease: false),
            ),
            Line(
              memberBody: MemberBody(
                  name: "Coxa (cm)", ratioMale: [2], ratioFemale: [2]),
            ),
            Line(
              memberBody: MemberBody(
                  name: "Braço (cm)", ratioMale: [4, 5], ratioFemale: [4, 7]),
            ),
            Line(
              memberBody: MemberBody(
                  name: "Bumbum (cm)", ratioMale: [2, 4], ratioFemale: [2, 3]),
            ),
          ],
        ),
      ),
    );
  }
}
