import 'package:flutter/material.dart';

class SizeConfig {
  static const double tabletLayout = 750;
  static const double webLayout = 1100;

  static late double width, height;

  static init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
