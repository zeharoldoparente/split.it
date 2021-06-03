import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyle {
  TextStyle get title;
  TextStyle get button;
}

class AppTextStyleDefault implements AppTextStyle {
  @override
  get button => GoogleFonts.inder(
        color: AppTheme.colors.button,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  get title => GoogleFonts.montserrat(
        color: AppTheme.colors.title,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      );
}
