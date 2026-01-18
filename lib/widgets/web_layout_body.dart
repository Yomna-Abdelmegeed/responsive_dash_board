import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/financial_overview_section.dart';
import 'package:responsive_dash_board/widgets/web_body.dart';
import 'package:responsive_dash_board/widgets/web_sidebar.dart';

class WebLayoutBody extends StatelessWidget {
  const WebLayoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: WebSidebar(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 6,
          child: WebBody(),
        ),
        Expanded(
          flex: 4,
          child: FinancialOverviewSection(),
        ),
      ],
    );
  }
}
