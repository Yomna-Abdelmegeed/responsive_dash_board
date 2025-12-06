import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/dash_board_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // Disable in release mode if you want
      builder: (context) => const DashBoard(),
    ),
  );
}

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: DashBoardView(),
    );
  }
}
