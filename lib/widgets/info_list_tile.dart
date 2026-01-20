import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';

class InfoListTile extends StatelessWidget {
  const InfoListTile({
    super.key,
    required this.userInfoModel,
  });

  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: ListTile(
        leading: Image.asset(userInfoModel.image),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            userInfoModel.title,
            style: AppTextStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            userInfoModel.subtitle,
            style: AppTextStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
