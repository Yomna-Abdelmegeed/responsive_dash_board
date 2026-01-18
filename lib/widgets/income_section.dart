import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/model/income_model.dart';
import 'package:responsive_dash_board/widgets/income_item.dart';
import 'package:responsive_dash_board/widgets/monthly_filter_button.dart';
import 'package:responsive_dash_board/widgets/sample_pie_chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: ShapeDecoration(
          color: AppColors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Income',
                  style: AppTextStyles.styleSemiBold20,
                ),
                MonthlyFilterButton(),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: SamplePieChart(),
                ),
                SizedBox(width: 40),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      IncomeItem(
                        incomeModel: IncomeModel(
                          title: 'Design service',
                          percentage: '40%',
                          color: AppColors.blue,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
