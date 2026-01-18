import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/my_bank_card.dart';

class MyBankCardPageView extends StatelessWidget {
  const MyBankCardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: MyBankCard(),
        ),
      ),
    );
  }
}
