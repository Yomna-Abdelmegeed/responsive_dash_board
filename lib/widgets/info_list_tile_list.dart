import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/assets_data.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/widgets/info_list_tile.dart';

class InfoListTileList extends StatelessWidget {
  const InfoListTileList({super.key});

  @override
  Widget build(BuildContext context) {
    final item = [
      UserInfoModel(
        image: Assets.imagesFace2,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
      ),
      UserInfoModel(
        image: Assets.imagesFace3,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com',
      ),
      UserInfoModel(
        image: Assets.imagesFace4,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
      )
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: item
            .map((e) => IntrinsicWidth(
                child: Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: InfoListTile(userInfoModel: e))))
            .toList(),
      ),
    );
  }
}
