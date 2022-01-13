import 'package:flutter/material.dart';
import 'package:ideal_proportion/model.dart';

import 'Line.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Gender? _gender;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                  // height = double.parse(v);
                  // print(height);
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
            memberBody: MemberBody(name: "Peito (cm)",
                // sizeCurrent: 96.2,
                // heigth: height,
                ratio: [2, 3]),
          ),
          Line(
            memberBody: MemberBody(
                name: "Cintura (cm)",
                // sizeCurrent: 94.5,
                // heigth: height,
                ratio: [2, 5],
                wantToIncrease: false),
          ),
          Line(
            memberBody: MemberBody(name: "Coxa (cm)",
                // sizeCurrent: 57,
                // heigth: height,
                ratio: [2]),
          ),
          Line(
            memberBody: MemberBody(name: "Braço (cm)",
                // sizeCurrent: 30.7,
                // heigth: height,
                ratio: [4, 5]),
          ),
          Line(
            memberBody: MemberBody(name: "Bumbum (cm)",
                // sizeCurrent: 104.6,
                // heigth: height,
                ratio: [2, 4]),
          ),
        ],
      ),
    );
  }
}
