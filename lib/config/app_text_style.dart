import 'package:flutter/material.dart';
import 'package:galactix_application/config/config.dart';
import 'package:galactix_application/core/extension/extension.dart';

class AppTextStyle {
  final BuildContext context;
  AppTextStyle(this.context);

  double get sp => (MediaQuery.of(context).size.width / 3) / 100;

  DeviceScreen get deviceScreen => context.screenSize();
/*---BodyBlack---*/
  TextStyle get bodySmallBlack => TextStyle(
        fontSize: deviceScreen == DeviceScreen.mobile
            ? 12
            : deviceScreen == DeviceScreen.tablet
                ? 14
                : 16,
        color: AppColors.instance.black,
      );

  TextStyle get bodyNormalBlack => TextStyle(
        fontSize: deviceScreen == DeviceScreen.mobile
            ? 14
            : deviceScreen == DeviceScreen.tablet
                ? 16
                : 18,
        color: AppColors.instance.black,
      );

  TextStyle get bodyLargeBlack => TextStyle(
        fontSize: deviceScreen == DeviceScreen.mobile
            ? 16
            : deviceScreen == DeviceScreen.tablet
                ? 18
                : 20,
        color: AppColors.instance.black,
      );

/*---BodyWhite---*/
  TextStyle get bodySmallWhite => TextStyle(
        fontSize: deviceScreen == DeviceScreen.mobile
            ? 12
            : deviceScreen == DeviceScreen.tablet
                ? 14
                : 16,
        color: AppColors.instance.white,
      );

  TextStyle get bodyNormalWhite => TextStyle(
        fontSize: deviceScreen == DeviceScreen.mobile
            ? 14
            : deviceScreen == DeviceScreen.tablet
                ? 16
                : 18,
        color: AppColors.instance.white,
      );

/*---BodyGreyTurquoise---*/
  TextStyle get bodyNormalGreyTurquoise => TextStyle(
        fontSize: deviceScreen == DeviceScreen.mobile
            ? 14
            : deviceScreen == DeviceScreen.tablet
                ? 16
                : 18,
        color: AppColors.instance.greyTurquoise,
      );

/*---BodyRed---*/
  TextStyle get bodyLargeRed => TextStyle(
        fontSize: deviceScreen == DeviceScreen.mobile
            ? 16
            : deviceScreen == DeviceScreen.tablet
                ? 18
                : 20,
        color: AppColors.instance.red,
      );

  TextStyle get bodyNormalRed => TextStyle(
        fontSize: deviceScreen == DeviceScreen.mobile
            ? 14
            : deviceScreen == DeviceScreen.tablet
                ? 16
                : 18,
        color: AppColors.instance.red,
      );

/*---BodyRed---*/
  TextStyle get bodyNormalDisable => TextStyle(
        fontSize: deviceScreen == DeviceScreen.mobile
            ? 14
            : deviceScreen == DeviceScreen.tablet
                ? 16
                : 18,
        color: AppColors.instance.disable,
      );
}
