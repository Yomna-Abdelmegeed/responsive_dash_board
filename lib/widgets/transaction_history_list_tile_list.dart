import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/transaction_history_model.dart';
import 'package:responsive_dash_board/widgets/transaction_history_list_tile.dart';

class TransactionHistoryListTileList extends StatelessWidget {
  const TransactionHistoryListTileList({super.key});

  static List<TransactionHistoryModel> transactionHistoryitem = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      mony: '20,129',
      isWithdrawal: true,
    ),
    TransactionHistoryModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      mony: '20,00',
      isWithdrawal: false,
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      mony: '20,129',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionHistoryitem.asMap().entries.map((entry) {
        int index = entry.key;
        var e = entry.value;

        return Padding(
          padding: EdgeInsets.only(bottom: (index == 0 || index == 1) ? 12 : 0),
          child: TransactionHistoryListTile(
            transactionHistoryModel: e,
          ),
        );
      }).toList(),
    );
  }
}
