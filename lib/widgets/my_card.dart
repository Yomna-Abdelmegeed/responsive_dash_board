import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/widgets/my_bank_card_page_view.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppTextStyles.styleSemiBold20,
        ),
        SizedBox(height: 20),
        MyBankCardPageView(),
      ],
    );
  }
}
