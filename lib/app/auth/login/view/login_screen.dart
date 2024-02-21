import 'package:flutter/material.dart';
import 'package:galactix_application/app/auth/login/view_model/login_view_model.dart';
import 'package:galactix_application/core/base/base_screen.dart';
import 'package:galactix_application/core/widgets/template_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      viewmodel: LoginViewModel(context: context),
      builder: (context, viewmodel, child, deviceScreen) {
        return BuildTemplateScreen(
          child: _buildBody(context, viewmodel),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, LoginViewModel viewmodel) {
    return Column(
      children: [
        //
      ],
    );
  }
}
