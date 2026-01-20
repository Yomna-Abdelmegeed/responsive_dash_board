import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/model/my_card_model.dart';

class MyCardListTile extends StatelessWidget {
  const MyCardListTile({super.key, required this.myCardModel});

  final MyCardModel myCardModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        myCardModel.title,
        style: AppTextStyles.styleRegular16(context).copyWith(
          color: AppColors.white,
        ),
      ),
      subtitle: Text(
        myCardModel.subtitle,
        style: AppTextStyles.styleMedium20(context),
      ),
      trailing: Image.asset(myCardModel.image),
    );
  }
}
