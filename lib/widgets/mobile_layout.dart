import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/financial_overview_section.dart';
import 'package:responsive_dash_board/widgets/web_body.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: WebBody(),
          ),
          FinancialOverviewSection(),
        ],
      ),
    );
  }
}
