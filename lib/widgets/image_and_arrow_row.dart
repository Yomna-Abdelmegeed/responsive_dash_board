import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';

class ImageAndArrowRow extends StatelessWidget {
  const ImageAndArrowRow({super.key, required this.image, required this.color});
  final String image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.lightGrey,
          child: Image.asset(image),
        ),
        Icon(
          Icons.keyboard_arrow_right_rounded,
          color: color,
        )
      ],
    );
  }
}
