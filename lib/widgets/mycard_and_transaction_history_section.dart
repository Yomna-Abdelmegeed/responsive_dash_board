import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/widgets/my_bank_card_page_view.dart';

class MycardAndTransactionHistorySection extends StatelessWidget {
  const MycardAndTransactionHistorySection({super.key});

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
          children: [
            MyBankCardPageView(),
            Divider(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
