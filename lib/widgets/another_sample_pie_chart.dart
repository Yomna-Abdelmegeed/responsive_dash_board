import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';

class AnotherSamplePieChart extends StatefulWidget {
  const AnotherSamplePieChart({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
              setState(() {
                if (!event.isInterestedForInteractions ||
                    pieTouchResponse == null ||
                    pieTouchResponse.touchedSection == null) {
                  touchedIndex = -1;
                  return;
                }
                touchedIndex =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
              });
            },
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 40,
          sections: showingSections(),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final radius = isTouched ? 32.0 : 25.0;
      return switch (i) {
        0 => PieChartSectionData(
            color: AppColors.beige,
            value: 22,
            radius: radius,
            titlePositionPercentageOffset: isTouched ? 1.8 : null,
            title: isTouched ? "Other" : "%22",
            titleStyle: TextStyle(
                color: isTouched ? AppColors.secondary : AppColors.white),
          ),
        1 => PieChartSectionData(
            color: AppColors.primary,
            value: 20,
            radius: radius,
            titlePositionPercentageOffset: isTouched ? 1.5 : null,
            title: isTouched ? "Product royalti" : "%20",
            titleStyle: TextStyle(
                color: isTouched ? AppColors.secondary : AppColors.white),
          ),
        2 => PieChartSectionData(
            color: AppColors.secondary,
            value: 24,
            radius: radius,
            titlePositionPercentageOffset: isTouched ? 3 : null,
            title: isTouched ? "Design product" : "%25",
            titleStyle: TextStyle(
                color: isTouched ? AppColors.secondary : AppColors.white),
          ),
        3 => PieChartSectionData(
            color: AppColors.blue,
            value: 40,
            radius: radius,
            titlePositionPercentageOffset: isTouched ? 1.5 : null,
            title: isTouched ? "Design service" : "%40",
            titleStyle: TextStyle(
                color: isTouched ? AppColors.secondary : AppColors.white),
          ),
        _ => throw StateError('Invalid'),
      };
    });
  }
}
