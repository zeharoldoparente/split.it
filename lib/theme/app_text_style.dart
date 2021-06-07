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
}
