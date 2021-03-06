import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyle {
  TextStyle get title;
  TextStyle get button;
  TextStyle get appbar;
  TextStyle get infoCardTitle;
  TextStyle get infoCardSubTitle1;
  TextStyle get infoCardSubTitle2;
  TextStyle get eventTileValue;
  TextStyle get eventSubTile;
  TextStyle get eventTile;
  TextStyle get stepperIndicatorPrimary;
  TextStyle get stepperIndicatorSecondary;
  TextStyle get stepperButtonActive;
  TextStyle get stepperButtonDisable;
  TextStyle get sptepOneTitle;
  TextStyle get sptepOneSubTitle;
  TextStyle get hintTextField;
  TextStyle get textField;
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

  @override
  get appbar => GoogleFonts.montserrat(
        color: AppTheme.colors.titleAppBar,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get infoCardTitle => GoogleFonts.inter(
        color: AppTheme.colors.infoCardTitle,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );
  @override
  TextStyle get infoCardSubTitle1 => GoogleFonts.inter(
        color: AppTheme.colors.infoCardSubTitle1,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );
  @override
  TextStyle get infoCardSubTitle2 => GoogleFonts.inter(
        color: AppTheme.colors.infoCardSubTitle2,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );
  @override
  TextStyle get eventTileValue => GoogleFonts.inter(
        color: AppTheme.colors.eventTileValue,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );
  @override
  TextStyle get eventSubTile => GoogleFonts.inter(
        color: AppTheme.colors.eventSubTile,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );
  @override
  TextStyle get eventTile => GoogleFonts.inter(
        color: AppTheme.colors.eventTile,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get stepperIndicatorPrimary => GoogleFonts.roboto(
        color: AppTheme.colors.stepperIndicatorPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );
  @override
  TextStyle get stepperIndicatorSecondary => GoogleFonts.roboto(
        color: AppTheme.colors.stepperIndicatorSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get stepperButtonActive => GoogleFonts.inter(
        color: AppTheme.colors.stepperButtonActive,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get sptepOneSubTitle => GoogleFonts.inter(
        color: AppTheme.colors.stepOne,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get sptepOneTitle => GoogleFonts.inter(
        color: AppTheme.colors.stepOne,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get hintTextField => GoogleFonts.inter(
        color: AppTheme.colors.hintTextField,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get textField => GoogleFonts.inter(
        color: AppTheme.colors.textField,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get stepperButtonDisable => GoogleFonts.inter(
        color: AppTheme.colors.stepperButtonDisable,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );
}
