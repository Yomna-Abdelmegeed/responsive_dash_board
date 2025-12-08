
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/widgets/expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ExpensesHeader(),
    );
  }
}
