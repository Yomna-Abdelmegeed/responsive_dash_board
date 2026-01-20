import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppTextStyles.styleSemiBold20(context),
        ),
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.lightGrey,
          child: Icon(
            Icons.add,
            color: AppColors.secondary,
          ),
        ),
      ],
    );
  }
}
