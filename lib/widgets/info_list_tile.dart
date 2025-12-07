import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';

class InfoListTile extends StatelessWidget {
  const InfoListTile({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: ListTile(
        leading: Image.asset(image),
        title: Text(
          title,
          style: AppTextStyles.styleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppTextStyles.styleRegular12,
        ),
      ),
    );
  }
}
