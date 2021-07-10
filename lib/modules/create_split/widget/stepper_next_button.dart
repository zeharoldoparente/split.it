import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class StepperNextButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final bool enabled;
  const StepperNextButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
            onPressed: enabled ? onTap : null,
            child: Text(
              title,
              style: enabled
                  ? AppTheme.textStyle.stepperButtonActive
                  : AppTheme.textStyle.stepperButtonDisable,
            )));
  }
}
