import 'package:flutter/material.dart';
import 'package:galactix_application/config/config.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        fontFamily: "Kanit",
        textTheme: GoogleFonts.kanitTextTheme(),
        useMaterial3: true,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.instance.primary,
          selectionColor: AppColors.instance.primary,
          selectionHandleColor: AppColors.instance.primary,
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColors.instance.primary,
        ),
        cardColor: AppColors.instance.white,
        checkboxTheme: CheckboxThemeData(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return AppColors.instance.green;
              }
              return AppColors.instance.greyTurquoise;
            },
          ),
          side: BorderSide(
            width: 1,
            color: AppColors.instance.greyTurquoise,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppBorderRadius.checkBox,
            ),
          ),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        fontFamily: "Kanit",
        textTheme: GoogleFonts.kanitTextTheme(),
        useMaterial3: true,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.instance.primary,
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColors.instance.primary,
        ),
        cardColor: AppColors.instance.white,
        checkboxTheme: CheckboxThemeData(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return AppColors.instance.green;
              }
              return AppColors.instance.greyTurquoise;
            },
          ),
          side: BorderSide(
            width: 1,
            color: AppColors.instance.greyTurquoise,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppBorderRadius.checkBox,
            ),
          ),
        ),
      );
}
