import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/financial_overview_section.dart';
import 'package:responsive_dash_board/widgets/web_body.dart';
import 'package:responsive_dash_board/widgets/web_sidebar.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: WebSidebar(),
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: WebBody(),
                ),
                FinancialOverviewSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
