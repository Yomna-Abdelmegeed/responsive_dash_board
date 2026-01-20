import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';

abstract class AppTextStyles {
  // ! old
  // static const TextStyle styleSemiBold16 = TextStyle(
  //   color: AppColors.primary,
  //   fontFamily: 'Montserrat',
  //   fontSize: 16,
  //   fontWeight: FontWeight.w600,
  // );

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: AppColors.primary,
      fontFamily: 'Montserrat',
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return const TextStyle(
      color: AppColors.primary,
      fontFamily: 'Montserrat',
      fontSize: 20,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return const TextStyle(
      color: AppColors.secondary,
      fontFamily: 'Montserrat',
      fontSize: 24,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return const TextStyle(
      color: AppColors.secondary,
      fontFamily: 'Montserrat',
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return const TextStyle(
      color: AppColors.grey,
      fontFamily: 'Montserrat',
      fontSize: 12,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return const TextStyle(
      color: AppColors.primary,
      fontFamily: 'Montserrat',
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return const TextStyle(
      color: AppColors.grey,
      fontFamily: 'Montserrat',
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return const TextStyle(
      color: AppColors.secondary,
      fontFamily: 'Montserrat',
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return const TextStyle(
      color: AppColors.primary,
      fontFamily: 'Montserrat',
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return const TextStyle(
      color: AppColors.white,
      fontFamily: 'Montserrat',
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
  }

//* function for Responsive FontSize

  double getResponsiveFontSize(context, {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;

    double lowerLimit = fontSize * 0.8;
    double upperLimit = fontSize * 1.2;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  //* function for Scale Factor
  double getScaleFactor(BuildContext context) {
    //! for tablet and mobile layout (not use context)
    // var dispatcher = PlatformDispatcher.instance;
    // var physicalWidth = dispatcher.views.first.physicalSize.width;
    // var devicePixelRatio = dispatcher.views.first.devicePixelRatio ;
    // double width = physicalWidth/ devicePixelRatio ;

    double width = MediaQuery.sizeOf(context).width;

    if (width < SizeConfig.tabletLayout) {
      return width / 400;
    } else if (width < SizeConfig.webLayout) {
      return width / 1000;
    } else {
      return width / 1536;
    }
  }
}
