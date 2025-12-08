import 'package:flutter/material.dart';

class ImageAndArrowRow extends StatelessWidget {
  const ImageAndArrowRow(
      {super.key,
      required this.image,
      required this.color,
      required this.backgroundColor});
  final String image;
  final Color color, backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: backgroundColor,
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
