import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(height: 24),
          QuickInvoice(),
        ],
      ),
    );
  }
}
