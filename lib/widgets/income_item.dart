import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/model/income_model.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.incomeModel});
  final IncomeModel incomeModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: incomeModel.color,
              radius: 6,
            ),
            SizedBox(width: 12),
            Text(
              incomeModel.title,
              style: AppTextStyles.styleRegular16(context),
            ),
          ],
        ),
        Text(
          incomeModel.percentage,
          style:
              AppTextStyles.styleMedium16(context).copyWith(color: AppColors.secondary),
        )
      ],
    );
  }
}
