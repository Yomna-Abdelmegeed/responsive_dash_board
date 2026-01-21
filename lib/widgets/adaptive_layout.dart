import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.webLayout,
  });
  final WidgetBuilder mobileLayout, tabletLayout, webLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= SizeConfig.tabletLayout) {
          return mobileLayout(context);
        } else if (constraints.maxWidth <= SizeConfig.webLayout) {
          return tabletLayout(context);
        } else {
          return webLayout(context);
        }
      },
    );
  }
}
