import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widget/step_input_text.dart';
import 'package:split_it/modules/create_split/widget/step_title_widget.dart';

class StepThreePage extends StatelessWidget {
  const StepThreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(
            title: "Qual ou quais", subTitle: "\nítens você quer dividir?"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text("1"),
              ),
              Expanded(
                flex: 3,
                child: StepInputWidget(
                  padding: EdgeInsets.zero,
                  onChange: (value) {},
                  hintText: "Ex: Picanha",
                  align: TextAlign.start,
                ),
              ),
              Expanded(
                child: StepInputWidget(
                  padding: EdgeInsets.zero,
                  onChange: (value) {},
                  hintText: "R\$ 0,00",
                  align: TextAlign.start,
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete))
            ],
          ),
        )
      ],
    );
  }
}
