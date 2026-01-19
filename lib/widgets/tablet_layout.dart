import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/mobile_layout.dart';
import 'package:responsive_dash_board/widgets/web_sidebar.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: WebSidebar(),
        ),
        Expanded(
          flex: 3,
          child: MobileLayout(),
        ),
      ],
    );
  }
}
