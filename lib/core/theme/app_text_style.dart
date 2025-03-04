import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyle {
  static double _getFontSize(BuildContext context, double fontSize) {
    return fontSize *
        MediaQuery.of(context).size.width /
        375; // Adjust based on screen width (375 is the base width)
  }

  static TextStyle f64W600MainTitleColor(BuildContext context) {
    return TextStyle(
      color: AppColors.mainTitleColor,
      fontSize: _getFontSize(context, 64),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle f20W600SubTitleColor(BuildContext context) {
    return TextStyle(
      color: AppColors.subTitleColor,
      fontSize: _getFontSize(context, 20),
      fontWeight: FontWeight.w600,
    );
  }

  static const TextStyle f20W600PrimaryColor = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static TextStyle f14W600OrColor(BuildContext context) {
    return TextStyle(
      color: AppColors.orColor,
      fontSize: _getFontSize(context, 14),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle f24W400PrimaryColor(BuildContext context) {
    return TextStyle(
      color: AppColors.primaryColor,
      fontSize: _getFontSize(context, 24),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle f20W200PrimaryColor(BuildContext context) {
    return TextStyle(
      color: AppColors.primaryColor,
      fontSize: _getFontSize(context, 20),
      fontWeight: FontWeight.w200,
    );
  }

  static TextStyle f20W500PrimaryColor(BuildContext context) {
    return TextStyle(
      color: AppColors.primaryColor,
      fontSize: _getFontSize(context, 14),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle f16W400SubTitleColor(BuildContext context) {
    return TextStyle(
      color: AppColors.subTitleColor,
      fontSize: _getFontSize(context, 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle f16W300RedColor(BuildContext context) {
    return TextStyle(
      color: AppColors.redColor,
      fontSize: _getFontSize(context, 16),
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle f16W700PrimaryColor(BuildContext context) {
    return TextStyle(
      color: AppColors.primaryColor,
      fontSize: _getFontSize(context, 16),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle f32w700White(BuildContext context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: _getFontSize(context, 32),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle f16w500PrimaryColor(BuildContext context) {
    return TextStyle(
      color: AppColors.primaryColor,
      fontSize: _getFontSize(context, 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle f20w300White(BuildContext context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: _getFontSize(context, 20),
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle f20w400SubTitle(BuildContext context) {
    return TextStyle(
      color: AppColors.subTitleColor,
      fontSize: _getFontSize(context, 20),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle f16w200SubTitleColor(BuildContext context) {
    return TextStyle(
      color: AppColors.subTitleColor,
      fontSize: _getFontSize(context, 16),
      fontWeight: FontWeight.w200,
    );
  }

  static TextStyle f16w600White(BuildContext context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: _getFontSize(context, 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle f24w500Yellow(BuildContext context) {
    return TextStyle(
      color: AppColors.yellowColor,
      fontSize: _getFontSize(context, 24),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle f16w200subTitleColorOpacity70(BuildContext context) {
    return TextStyle(
      color: AppColors.subTitleColor.withOpacity(0.7),
      fontSize: _getFontSize(context, 16),
      fontWeight: FontWeight.w200,
    );
  }

  static TextStyle f10SubTitleW600(BuildContext context) {
    return TextStyle(
      color: AppColors.subTitleColor,
      fontSize: _getFontSize(context, 10),
      fontWeight: FontWeight.w600,
    );
  }
}
