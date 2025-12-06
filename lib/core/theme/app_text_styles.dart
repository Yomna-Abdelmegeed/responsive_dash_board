import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';

abstract class AppTextStyles {
  static const TextStyle styleSemiBold16 = TextStyle(
    color: AppColors.primary,
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle styleSemiBold20 = TextStyle(
    color: AppColors.primary,
    fontFamily: 'Montserrat',
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle styleSemiBold24 = TextStyle(
    color: AppColors.secondary,
    fontFamily: 'Montserrat',
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle styleSemiBold18 = TextStyle(
    color: AppColors.secondary,
    fontFamily: 'Montserrat',
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle styleRegular12 = TextStyle(
    color: AppColors.grey,
    fontFamily: 'Montserrat',
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle styleRegular16 = TextStyle(
    color: AppColors.primary,
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle styleRegular14 = TextStyle(
    color: AppColors.grey,
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle styleBold16 = TextStyle(
    color: AppColors.secondary,
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle styleMedium16 = TextStyle(
    color: AppColors.primary,
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle styleMedium20 = TextStyle(
    color: AppColors.white,
    fontFamily: 'Montserrat',
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}
