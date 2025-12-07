import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/utils/assets_data.dart';
import 'package:responsive_dash_board/widgets/drawer_item_list.dart';
import 'package:responsive_dash_board/widgets/info_list_tile.dart';

class WebSidebar extends StatelessWidget {
  const WebSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            SizedBox(height: 48),
            InfoListTile(
              image: Assets.imagesFace1,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
            DrawerItemList(),
          ],
        ),
      ),
    );
  }
}
