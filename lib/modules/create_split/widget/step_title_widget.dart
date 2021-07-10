import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class StepTitleWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const StepTitleWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            text: title,
            style: AppTheme.textStyle.sptepOneTitle,
            children: [
              TextSpan(
                text: subTitle,
                style: AppTheme.textStyle.sptepOneSubTitle,
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
