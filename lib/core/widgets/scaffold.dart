import 'package:flutter/material.dart';
import 'package:galactix_application/config/app_colors.dart';
import 'package:galactix_application/core/widgets/widgets.dart';

class BuildScaffold extends StatelessWidget {
  final Widget? body;
  final EdgeInsetsGeometry? paddingScreen;
  final Widget? leading;
  final String? textTitle;
  final void Function()? onTapLeading;
  final bool? resizeToAvoidBottomInset;
  final bool divider;
  final Widget? drawer;
  final Key? scaffoldKey;
  const BuildScaffold({
    super.key,
    required this.body,
    this.paddingScreen,
    this.leading,
    this.textTitle,
    this.onTapLeading,
    this.resizeToAvoidBottomInset,
    this.divider = true,
    this.drawer,
    this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    Color? backgroundColor = AppColors.instance.primary;
    return Scaffold(
      key: scaffoldKey,
      drawer: drawer,
      drawerScrimColor: backgroundColor,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: backgroundColor,
      appBar: AppBars.basic(
        context,
        backgroundColor: backgroundColor,
        surfaceTintColor: backgroundColor,
        paddingAppBar: paddingScreen,
        leading: leading,
        onTapLeading: onTapLeading,
        divider: divider,
      ),
      body: body,
    );
  }
}
