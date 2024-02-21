import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:galactix_application/core/extension/extension.dart';
import 'package:galactix_application/core/widgets/widgets.dart';

class BuildTemplateScreen extends StatelessWidget {
  final EdgeInsetsGeometry? paddingScreen;
  final Widget child;
  final void Function()? onTapLeading;
  final Widget? leading;
  final bool canPop;
  final bool loading;
  final String? leadingText;
  final bool? resizeToAvoidBottomInset;
  final bool divider;
  final Widget? drawer;
  final Key? scaffoldKey;
  const BuildTemplateScreen({
    super.key,
    required this.child,
    this.paddingScreen,
    this.leading,
    this.onTapLeading,
    this.canPop = true,
    this.loading = false,
    this.leadingText,
    this.resizeToAvoidBottomInset,
    this.divider = true,
    this.drawer,
    this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: canPop,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: BuildScaffold(
          scaffoldKey: scaffoldKey,
          drawer: drawer,
          leading: leading,
          onTapLeading: onTapLeading,
          paddingScreen: paddingScreen ?? context.paddingScreenHorizontal,
          textTitle: leadingText,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          divider: divider,
          body: SafeArea(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: paddingScreen ?? context.paddingScreenHorizontal,
                    child: Center(
                      child: child,
                    ),
                  ),
                ),
                if (loading) AppLoading.basic(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
