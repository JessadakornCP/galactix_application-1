import 'package:flutter/material.dart';
import 'package:galactix_application/config/config.dart';
import 'package:galactix_application/core/Navigation/navigation.dart';
import 'package:galactix_application/core/extension/extension.dart';
import 'package:galactix_application/core/widgets/widgets.dart';

class AppBars {
  static basic(
    BuildContext context, {
    Widget? leading,
    EdgeInsetsGeometry? paddingAppBar,
    void Function()? onTapLeading,
    bool divider = false,
    Color? backgroundColor,
    Color? surfaceTintColor,
  }) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor ?? AppColors.instance.white,
      surfaceTintColor: surfaceTintColor ?? AppColors.instance.white,
      elevation: 0,
      bottomOpacity: 0.0,
      title: SizedBox(
        height: kToolbarHeight,
        child: Padding(
          padding: paddingAppBar ?? (context.paddingScreenHorizontal),
          child: SizedBox(
            height: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                BuildInkWell(
                  onTap: onTapLeading ?? () => AppNav.close(context),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: context.lowValue),
                        child: leading ??
                            Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: AppColors.instance.white,
                              size: context.iconSizeLow,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      titleSpacing: 0,
      bottom: !divider
          ? null
          : PreferredSize(
              preferredSize: Size.zero,
              child: Divider(
                color: AppColors.instance.greyBlond,
              ),
            ),
    );
  }
}
