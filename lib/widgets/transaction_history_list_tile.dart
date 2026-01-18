import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/model/transaction_history_model.dart';

class TransactionHistoryListTile extends StatelessWidget {
  const TransactionHistoryListTile(
      {super.key, required this.transactionHistoryModel});
  final TransactionHistoryModel transactionHistoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: ListTile(
        title: Text(
          transactionHistoryModel.title,
          style: AppTextStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transactionHistoryModel.date,
          style: AppTextStyles.styleRegular16.copyWith(color: AppColors.grey),
        ),
        trailing: Text(
          '\$${transactionHistoryModel.mony}',
          style: AppTextStyles.styleSemiBold20.copyWith(
            color: transactionHistoryModel.isWithdrawal
                ? AppColors.red
                : AppColors.green,
          ),
        ),
      ),
    );
  }
}
