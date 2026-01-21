import 'package:flutter/material.dart';

class ImageAndArrowRow extends StatelessWidget {
  const ImageAndArrowRow(
      {super.key,
      required this.image,
      required this.color,
      required this.backgroundColor,
      required this.iconColor});
  final String image;
  final Color color, backgroundColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: backgroundColor,
            child: ImageIcon(
              AssetImage(image),
              color: iconColor,
            ),
          ),
        ),
        Icon(
          Icons.keyboard_arrow_right_rounded,
          color: color,
        )
      ],
    );
  }
}
