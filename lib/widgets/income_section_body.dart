import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/another_sample_pie_chart.dart';
import 'package:responsive_dash_board/widgets/income_item_list.dart';
import 'package:responsive_dash_board/widgets/sample_pie_chart.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return width <= 1444 && width >= SizeConfig.webLayout
        ? AnotherSamplePieChart()
        : Row(
            children: [
              Expanded(
                flex: 3,
                child: SamplePieChart(),
              ),
              SizedBox(width: 8),
              Expanded(
                flex: 4,
                child: IncomeItemList(),
              )
            ],
          );
  }
}
