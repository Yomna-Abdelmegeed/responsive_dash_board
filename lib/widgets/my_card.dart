import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/widgets/dots_indicator_list.dart';
import 'package:responsive_dash_board/widgets/my_bank_card_page_view.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();

    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

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
        MyBankCardPageView(pageController: pageController),
        SizedBox(height: 20),
        DotsIndicatorList(
          currentIndex: currentPageIndex,
        ),
      ],
    );
  }
}
