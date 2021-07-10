import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widget/person_tile.dart';
import 'package:split_it/modules/create_split/widget/step_input_text.dart';
import 'package:split_it/modules/create_split/widget/step_title_widget.dart';

class StepTwoPage extends StatefulWidget {
  const StepTwoPage({Key? key}) : super(key: key);

  @override
  _StepTwoPageState createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(
          title: "Com quem",
          subTitle: "\nvocê quer dividir?",
        ),
        StepInputWidget(
          onChange: (value) {},
          hintText: "Nome da pessoa",
        ),
        SizedBox(
          height: 35,
        ),
        PersonTile(name: "José Aroldo"),
        PersonTile(name: "José Aroldo"),
        PersonTile(name: "José Aroldo"),
        PersonTile(name: "José Aroldo"),
      ],
    );
  }
}
