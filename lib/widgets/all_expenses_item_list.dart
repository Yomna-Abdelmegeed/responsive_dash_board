import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/assets_data.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/all_expenses_first_item.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemList extends StatelessWidget {
  const AllExpensesItemList({super.key});

  @override
  Widget build(BuildContext context) {
    List<AllExpensesItemModel> item = [
      AllExpensesItemModel(
          image: Assets.imagesBalance,
          title: 'Balance',
          date: 'April 2022',
          price: r'$20,129'),
      AllExpensesItemModel(
          image: Assets.imagesIncome,
          title: 'Income',
          date: 'April 2022',
          price: r'$20,129'),
      AllExpensesItemModel(
          image: Assets.imagesExpenses,
          title: 'Expenses',
          date: 'April 2022',
          price: r'$20,129'),
    ];
    return Row(
      children: item.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 0) {
          return Expanded(
            child: AllExpensesFirstItem(
              allExpensesItemModel: item,
            ),
          );
        } else if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(
                allExpensesItemModel: item,
              ),
            ),
          );
        } else {
          return Expanded(
            child: AllExpensesItem(
              allExpensesItemModel: item,
            ),
          );
        }
      }).toList(),
    );
  }
}
