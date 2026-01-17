import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/assets_data.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemList extends StatefulWidget {
  const AllExpensesItemList({super.key});

  @override
  State<AllExpensesItemList> createState() => _AllExpensesItemListState();
}

class _AllExpensesItemListState extends State<AllExpensesItemList> {
  final List<AllExpensesItemModel> item = [
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

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(item.length * 2 - 1, (index) {
        if (index.isOdd) {
          return const SizedBox(width: 12);
        }
        final itemIndex = index ~/ 2;
        return Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                selectedItem = index;
              });
            },
            child: AllExpensesItem(
              isSelected: index == selectedItem,
              allExpensesItemModel: item[itemIndex],
            ),
          ),
        );
      }),
    );
  }
}
