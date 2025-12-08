import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/image_and_arrow_row.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          width: 1.0,
          color: AppColors.halfGrey,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageAndArrowRow(
            image: allExpensesItemModel.image,
            color: AppColors.primary,
            backgroundColor: AppColors.lightGrey,
          ),
          SizedBox(height: 34),
          Text(
            allExpensesItemModel.title,
            style: AppTextStyles.styleSemiBold16,
          ),
          SizedBox(height: 8),
          Text(
            allExpensesItemModel.date,
            style: AppTextStyles.styleRegular14,
          ),
          SizedBox(height: 16),
          Text(
            allExpensesItemModel.price,
            style: AppTextStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
