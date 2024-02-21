import 'package:flutter/material.dart';
import 'package:galactix_application/app/menu_drawer/model/menu_drawer_model.dart';
import 'package:galactix_application/app/menu_drawer/viewmodel/menu_drawer_view_model.dart';
import 'package:galactix_application/config/config.dart';
import 'package:galactix_application/core/base/base_screen.dart';
import 'package:galactix_application/core/constants/image/image_constants.dart';
import 'package:galactix_application/core/extension/extension.dart';
import 'package:galactix_application/core/navigation/navigation.dart';
import 'package:galactix_application/core/widgets/inkwell.dart';
import 'package:galactix_application/core/widgets/textformfield_widget.dart';

class MenuDrawerScreen extends StatelessWidget {
  const MenuDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      viewmodel: MenuDrawerViewModel(context: context),
      onInit: (viewmodel) => viewmodel.init(),
      builder: (context, viewmodel, child, deviceScreen) {
        return Drawer(
          width: context.drawer,
          backgroundColor: AppColors.instance.teal,
          surfaceTintColor: AppColors.instance.teal,
          shape: const RoundedRectangleBorder(),
          child: SafeArea(
            child: _buildBody(context, viewmodel),
          ),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, MenuDrawerViewModel viewmodel) {
    return Column(
      children: [
        _profile(context),
        _form(context),
        _menu(context, viewmodel),
        _logo(context),
      ],
    );
  }

  Widget _profile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.paddingScreen,
        right: context.paddingScreen,
        bottom: context.normalValue,
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            color: AppColors.instance.white,
          )
        ],
      ),
    );
  }

  Widget _form(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.paddingScreen,
        right: context.paddingScreen,
        bottom: context.normalValue,
      ),
      child: Column(
        children: [
          BuildTextFormField(
            prefixIcon: Icon(
              Icons.person_outline_outlined,
              color: AppColors.instance.white,
            ),
            style: AppTextStyle(context).bodySmallWhite,
          ),
          BuildTextFormField(
            prefixIcon: Icon(
              Icons.phone_in_talk_sharp,
              color: AppColors.instance.white,
            ),
            style: AppTextStyle(context).bodySmallWhite,
          ),
        ],
      ),
    );
  }

  Widget _menu(BuildContext context, MenuDrawerViewModel viewmodel) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: viewmodel.menuDrawerList.length,
      itemBuilder: (context, index) {
        MenuDrawer data = viewmodel.menuDrawerList[index];
        return BuildInkWell(
          onTap: () => AppNav.toReplacementName(context, data.nav),
          child: Container(
            color: data.background,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.normalValue,
                vertical: context.lowValue,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset(data.icon),
                  ),
                  Text(
                    data.name,
                    style: AppTextStyle(context).bodyNormalWhite,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _logo(BuildContext context) {
    return Expanded(
      child: Image.asset(
        ImageConstants.instance.logoText,
      ),
    );
  }
}
