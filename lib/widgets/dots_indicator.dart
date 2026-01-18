import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
          color: isActive ? AppColors.secondary : AppColors.background,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
    );
  }
}
