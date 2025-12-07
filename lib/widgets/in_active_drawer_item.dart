import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
    this.onTap,
  });

  final DrawerItemModel drawerItemModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap ?? () {},
      leading: Image.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppTextStyles.styleRegular16,
      ),
    );
  }
}
