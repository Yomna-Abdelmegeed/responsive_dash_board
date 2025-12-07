import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/assets_data.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/Active_Drawer_Item.dart';
import 'package:responsive_dash_board/widgets/in_active_drawer_item.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({
    super.key,
  });
  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawerItemList = [
    DrawerItemModel(
      image: Assets.imagesDashboard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: Assets.imagesTransaction,
      title: 'My Transaction',
    ),
    DrawerItemModel(
      image: Assets.imagesStatistics,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: Assets.imagesWallet,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: Assets.imagesInvestments,
      title: 'My Investments',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: drawerItemList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: activeIndex == index
                ? ActiveDrawerItem(
                    drawerItemModel: drawerItemList[index],
                  )
                : InActiveDrawerItem(
                    drawerItemModel: drawerItemList[index],
                    onTap: () {
                      setState(() {
                        activeIndex = index;
                        log("activeIndex = $activeIndex ");
                      });
                    },
                  ),
          );
        });
  }
}
