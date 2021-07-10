import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class CreateSplitAppBarWidget extends PreferredSize {
  final VoidCallback onTapBack;
  final int actualPage;
  final int size;
  CreateSplitAppBarWidget({
    required this.onTapBack,
    required this.actualPage,
    required this.size,
  }) : super(
            child: SafeArea(
              top: true,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: IconButton(
                      onPressed: onTapBack,
                      icon: Icon(
                        Icons.arrow_back,
                        color: AppTheme.colors.backButton,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Text.rich(
                      TextSpan(
                          text: "0${actualPage + 1}",
                          style: AppTheme.textStyle.stepperIndicatorPrimary,
                          children: [
                            TextSpan(
                                text: " - 0$size",
                                style: AppTheme
                                    .textStyle.stepperIndicatorSecondary)
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(60));
}
