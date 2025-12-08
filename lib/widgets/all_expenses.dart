import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/utils/assets_data.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';
import 'package:responsive_dash_board/widgets/expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          ExpensesHeader(),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: AllExpensesItem(
                  allExpensesItemModel: AllExpensesItemModel(
                      image: Assets.imagesWallet,
                      title: 'Balance',
                      date: 'April 2022',
                      price: r'$20,129'),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: AllExpensesItem(
                  allExpensesItemModel: AllExpensesItemModel(
                      image: Assets.imagesWallet,
                      title: 'Balance',
                      date: 'April 2022',
                      price: r'$20,129'),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: AllExpensesItem(
                  allExpensesItemModel: AllExpensesItemModel(
                      image: Assets.imagesWallet,
                      title: 'Balance',
                      date: 'April 2022',
                      price: r'$20,129'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
