import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Text(
            'yomnaaaa',
            style: TextStyle(
              color: AppColors.secondary,
              fontFamily: 'Montserrat',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'yomnaaaa',
            style: AppTextStyles.styleSemiBold18,
          ),
        ],
      )),
    );
  }
}
