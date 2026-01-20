import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppTextStyles.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: AppTextStyles.styleMedium16(context).copyWith(
            color: AppColors.secondary,
          ),
        )
      ],
    );
  }
}
