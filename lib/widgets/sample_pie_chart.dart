import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';

class SamplePieChart extends StatefulWidget {
  const SamplePieChart({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
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
            showTitle: false,
            radius: radius,
          ),
        1 => PieChartSectionData(
            color: AppColors.primary,
            value: 20,
            showTitle: false,
            radius: radius,
          ),
        2 => PieChartSectionData(
            color: AppColors.secondary,
            value: 24,
            showTitle: false,
            radius: radius,
          ),
        3 => PieChartSectionData(
            color: AppColors.blue,
            value: 40,
            title: '30%',
            showTitle: false,
            radius: radius,
          ),
        _ => throw StateError('Invalid'),
      };
    });
  }
}
