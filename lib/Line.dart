import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ideal_proportion/model.dart';

class Line extends StatefulWidget {
  MemberBody memberBody;

  Line({
    Key? key,
    required this.memberBody,
  }) : super(key: key);

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            onChanged: (v) {
              setState(() {
                widget.memberBody.sizeCurrent = double.parse(v);
              });
            },
            keyboardType: TextInputType.number,
            controller: _controller,
            decoration: InputDecoration(
                suffix: const Text("cm"),
                labelText: widget.memberBody.name,
                border: const OutlineInputBorder()),
          ),
          const SizedBox(
            height: 8.0,
          ),
          MemberBody.heigth > 0 && widget.memberBody.sizeCurrent > 0
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Ideal: ${MemberBody.heigth}"),
                    Text("Ideal: ${widget.memberBody.sizeIdealStr}"),
                    Text("Alcançado: ${widget.memberBody.percentualGoalStr}"),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
