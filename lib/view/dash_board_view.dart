import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/web_layout_body.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        webLayout: (context) => WebLayoutBody(),
      ),
    );
  }
}
