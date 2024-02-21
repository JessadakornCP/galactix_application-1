import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:galactix_application/app/home/viewmodel/home_view_model.dart';
import 'package:galactix_application/app/menu_drawer/view/menu_drawer_screen.dart';
import 'package:galactix_application/config/app_colors.dart';
import 'package:galactix_application/core/base/base_screen.dart';
import 'package:galactix_application/core/constants/image/image_constants.dart';
import 'package:galactix_application/core/extension/context_extension.dart';
import 'package:galactix_application/core/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      viewmodel: HomeViewModel(context: context),
      builder: (context, viewmodel, child, deviceScreen) {
        return BuildTemplateScreen(
          scaffoldKey: viewmodel.scaffoldKey,
          onTapLeading: () => viewmodel.scaffoldKey.currentState?.openDrawer(),
          leading: Icon(
            Icons.format_list_bulleted_sharp,
            color: AppColors.instance.white,
          ),
          drawer: const MenuDrawerScreen(),
          child: _buildBody(
            context,
          ),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        _imageGalactix(context),
        _buttonLogin(context),
        _buttonRegister(context),
      ],
    );
  }

  Widget _imageGalactix(BuildContext context) {
    return Image.asset(
      ImageConstants.instance.galactix,
      width: context.width * 0.7,
      fit: BoxFit.fill,
    );
  }

  Widget _buttonLogin(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Log in'),
    );
  }

  Widget _buttonRegister(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Register'),
    );
  }
}
