import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';

class MonthlyFilterButton extends StatelessWidget {
  const MonthlyFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border.all(
            width: 1.0,
            color: AppColors.grey,
          )),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppTextStyles.styleMedium16,
          ),
          SizedBox(width: 18),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.primary,
          )
        ],
      ),
    );
  }
}
