import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/widgets/income_section_body.dart';
import 'package:responsive_dash_board/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
      child: Container(
        decoration: ShapeDecoration(
          color: AppColors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Column(
          children: [
            IncomeSectionHeader(),
            SizedBox(height: 8),
            IncomeSectionBody(),
          ],
        ),
      ),
    );
  }
}
