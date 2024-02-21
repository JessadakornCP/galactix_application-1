import 'package:flutter/material.dart';

class AppColors {
  AppColors._init();
  static final AppColors _instance = AppColors._init();
  static AppColors get instance => _instance;

  Color primary = const Color(0xFF2c8f9f);
  Color black = const Color(0xFF222831);
  Color brown = const Color(0xFFa87e6f);
  Color darkGray = const Color(0xFF676870);
  Color disable = const Color(0xFFE0E6F1);
  Color green = const Color(0xFF60C0B0);
  Color gray = const Color(0xFFa5a6ae);
  Color greyBlond = const Color(0xFFE0E6F1);
  Color greyCharcoal = const Color(0xFFDADADA);
  Color greyTurquoise = const Color(0xFF949FB6);
  Color lightGray = const Color(0xFFf7f7f7);
  Color red = const Color(0xFFFE3326);
  Color white = const Color(0xFFffffff);
  Color teal = const Color(0xff007486);
}
