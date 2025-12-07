import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppTextStyles.styleBold16,
      ),
      trailing: Container(
        width: 4,
        color: AppColors.secondary,
      ),
    );
  }
}
