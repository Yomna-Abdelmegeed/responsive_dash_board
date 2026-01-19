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
        const SizedBox(width: 24),
        Expanded(
          flex: 10,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: WebBody(),
                    ),
                    Expanded(
                      flex: 2,
                      child: FinancialOverviewSection(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
