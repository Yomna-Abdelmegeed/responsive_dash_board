import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/mycard_and_transaction_history_section.dart';

class FinancialOverviewSection extends StatelessWidget {
  const FinancialOverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MycardAndTransactionHistorySection(),
          IncomeSection(),
        ],
      ),
    );
  }
}
