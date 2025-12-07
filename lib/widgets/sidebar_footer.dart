import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/assets_data.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/in_active_drawer_item.dart';

class SidebarFooter extends StatelessWidget {
  const SidebarFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
            image: Assets.imagesSetting,
            title: 'Setting system',
          ),
        ),
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
            image: Assets.imagesLogout,
            title: 'Logout account',
          ),
        ),
      ],
    );
  }
}
