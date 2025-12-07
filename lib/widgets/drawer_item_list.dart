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
          return activeIndex == index
              ? ActiveDrawerItem(
                  image: drawerItemList[index].image,
                  title: drawerItemList[index].title,
                )
              : InkWell(
                  onTap: () {
                    setState(() {
                      activeIndex = index;
                      log("activeIndex = $activeIndex ");
                    });
                  },
                  child: InActiveDrawerItem(
                    image: drawerItemList[index].image,
                    title: drawerItemList[index].title,
                  ),
                );
        });
  }
}
