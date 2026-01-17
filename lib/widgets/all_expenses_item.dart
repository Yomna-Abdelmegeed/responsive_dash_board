import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/active_all_expenses_item.dart';
import 'package:responsive_dash_board/widgets/in_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key,
      required this.isSelected,
      required this.allExpensesItemModel});

  final bool isSelected;
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(
            allExpensesItemModel: allExpensesItemModel,
          )
        : InActiveAllExpensesItem(
            allExpensesItemModel: allExpensesItemModel,
          );
  }
}
