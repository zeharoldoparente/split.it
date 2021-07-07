import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundSecondary;
  Color get backgroundPrimary;
  Color get title;
  Color get button;
  Color get border;
  Color get titleAppBar;
  Color get borderAppBar;
  Color get icon;
  Color get iconBackground1;
  Color get iconBackground2;
  Color get infoCard;
  Color get infoCardTitle;
  Color get infoCardSubTitle1;
  Color get infoCardSubTitle2;
  Color get eventTileValue;
  Color get eventSubTile;
  Color get eventTile;
  Color get divider;
  Color get stepperIndicatorPrimary;
  Color get stepperIndicatorSecondary;
  Color get backButton;
}

class AppColorDefault implements AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get title => Color(0xFF40B28C);

  @override
  Color get button => Color(0xFF666666);

  @override
  Color get infoCard => Color(0xFF666666);

  @override
  Color get border => Color(0xFFC0C0C0);

  @override
  Color get titleAppBar => Color(0xFFFFFFFF);

  @override
  Color get borderAppBar => Color(0xFFFFFFFF);

  @override
  Color get icon => Color(0xFFF5F5F5);

  @override
  Color get iconBackground1 => Color(0xFFe9f8f2);

  @override
  Color get infoCardTitle => Color(0xFF666666);

  @override
  Color get infoCardSubTitle1 => Color(0xFF40B38C);

  @override
  Color get infoCardSubTitle2 => Color(0xFFE83F5B);

  @override
  Color get iconBackground2 => Color(0xFFfdecef);

  @override
  Color get eventTileValue => Color(0xFF666666);

  @override
  Color get eventSubTile => Color(0xFFA4B2AE);

  @override
  Color get eventTile => Color(0xFF455250);

  @override
  Color get divider => Color(0xFF666666);

  @override
  Color get stepperIndicatorPrimary => Color(0xFF3CAB82);

  @override
  Color get stepperIndicatorSecondary => Color(0xFF666666);

  @override
  Color get backButton => Color(0xFF666666);
}
