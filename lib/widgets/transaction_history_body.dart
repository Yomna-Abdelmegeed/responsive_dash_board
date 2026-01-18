import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/widgets/transaction_historyList_tile_list.dart';

class TransactionHistoryBody extends StatelessWidget {
  const TransactionHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppTextStyles.styleMedium16.copyWith(color: AppColors.grey),
        ),
        SizedBox(height: 16),
        TransactionHistoryListTileList(),
      ],
    );
  }
}
