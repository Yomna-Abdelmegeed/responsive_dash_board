import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpenses(),
      ],
    );
  }
}
