import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/web_body.dart';
import 'package:responsive_dash_board/widgets/web_sidebar.dart';

class WebLayoutBody extends StatelessWidget {
  const WebLayoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: WebSidebar(),
        ),
        SizedBox(width: 8),
        Expanded(
          child: WebBody(),
        )
      ],
    );
  }
}
