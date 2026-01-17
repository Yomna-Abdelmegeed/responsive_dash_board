import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/assets_data.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/widgets/info_list_tile.dart';

class SidebarHeader extends StatelessWidget {
  const SidebarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return InfoListTile(
      userInfoModel: UserInfoModel(
        image: Assets.imagesFace1,
        title: 'Lekan Okeowo',
        subtitle: 'demo@gmail.com',
      ),
    );
  }
}
