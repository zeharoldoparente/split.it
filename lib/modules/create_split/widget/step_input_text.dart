import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class StepInputWidget extends StatelessWidget {
  final void Function(String) onChange;
  final String hintText;
  final TextAlign align;
  final EdgeInsets? padding;
  const StepInputWidget({
    Key? key,
    required this.onChange,
    required this.hintText,
    this.align = TextAlign.center,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: 64),
      child: TextField(
        onChanged: onChange,
        textAlign: align,
        style: AppTheme.textStyle.textField,
        cursorColor: AppTheme.colors.backgroundSecondary,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTheme.textStyle.hintTextField,
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.colors.backgroundSecondary,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.colors.inputTextStep,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.colors.backgroundSecondary,
            ),
          ),
        ),
      ),
    );
  }
}
