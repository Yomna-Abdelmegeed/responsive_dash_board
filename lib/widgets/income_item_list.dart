import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/model/income_model.dart';
import 'package:responsive_dash_board/widgets/income_item.dart';

class IncomeItemList extends StatelessWidget {
  const IncomeItemList({super.key});

  static List<IncomeModel> incomeItems = [
    IncomeModel(
      title: 'Design service',
      percentage: '40%',
      color: AppColors.blue,
    ),
    IncomeModel(
      title: 'Design product',
      percentage: '25%',
      color: AppColors.secondary,
    ),
    IncomeModel(
      title: 'Product royalti',
      percentage: '20%',
      color: AppColors.primary,
    ),
    IncomeModel(
      title: 'Other',
      percentage: '22%',
      color: AppColors.beige,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: incomeItems.asMap().entries.map(
        (entry) {
          int index = entry.key;
          IncomeModel e = entry.value;

          return Padding(
            padding: EdgeInsets.only(
                bottom: index != incomeItems.length - 1 ? 12.0 : 0),
            child: IncomeItem(
              incomeModel: e,
            ),
          );
        },
      ).toList(),
    );
  }
}
