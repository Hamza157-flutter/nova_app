import 'package:flutter/material.dart';
import 'package:nova_app/core/theme/app_colors.dart';
import 'package:nova_app/core/theme/app_text_style.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 52,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.yellowColor),
        child: Center(
          child: Text(
            text,
            style: AppTextStyle.f20W200PrimaryColor,
          ),
        ),
      ),
    );
  }
}
