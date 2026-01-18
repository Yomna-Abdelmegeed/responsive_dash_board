import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/core/utils/assets_data.dart';
import 'package:responsive_dash_board/model/my_card_model.dart';
import 'package:responsive_dash_board/widgets/my_card_list_tile.dart';

class MyBankCard extends StatelessWidget {
  const MyBankCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: EdgeInsets.only(
          right: 16,
          top: 8,
        ),
        decoration: ShapeDecoration(
          image: DecorationImage(image: AssetImage(Assets.imagesCardBg)),
          color: AppColors.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            MyCardListTile(
              myCardModel: MyCardModel(
                title: 'Name card',
                subtitle: 'Syah Bandi',
                image: Assets.imagesGallery,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '0918 8124 0042 8129',
                  style: AppTextStyles.styleSemiBold24.copyWith(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  '12/20 - 124',
                  style: AppTextStyles.styleRegular16.copyWith(
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: 24),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
