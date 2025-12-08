import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/widgets/monthly_filter_button.dart';

class ExpensesHeader extends StatelessWidget {
  const ExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppTextStyles.styleSemiBold20,
        ),
        MonthlyFilterButton(),
      ],
    );
  }
}
