import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SocialButtonWidget extends StatelessWidget {
  final String imagePath;
  final String textLabel;
  final VoidCallback onTap;

  const SocialButtonWidget({
    Key? key,
    required this.imagePath,
    required this.textLabel,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.fromBorderSide(
            BorderSide(color: AppTheme.colors.border),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 57,
              height: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Image.asset(imagePath),
                  SizedBox(
                    width: 16,
                  ),
                  Container(width: 1, color: AppTheme.colors.border),
                ],
              ),
            ),
            Expanded(child: Container()),
            Text(
              textLabel,
              style: AppTheme.textStyle.button,
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
