import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';

class DotsIndicatorList extends StatelessWidget {
  const DotsIndicatorList({super.key, required this.currentIndex});

  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: List.generate(
          3,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: DotsIndicator(isActive: index == currentIndex),
          ),
        ),
      ),
    );
  }
}
