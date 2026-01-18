import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/widgets/my_bank_card.dart';

class FinancialOverviewSection extends StatelessWidget {
  const FinancialOverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyCard(),
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: ShapeDecoration(
          color: AppColors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My card',
              style: AppTextStyles.styleSemiBold20,
            ),
            SizedBox(height: 20),
            MyBankCard(),
          ],
        ),
      ),
    );
  }
}
