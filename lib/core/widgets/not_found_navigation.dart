import 'package:flutter/material.dart';
import 'package:galactix_application/config/config.dart';
import 'package:galactix_application/core/widgets/widgets.dart';

class NotFoundNavigationWidget extends StatelessWidget {
  const NotFoundNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BuildScaffold(
      body: Center(
          child: Text(
        'Not Found Screen',
        style: AppTextStyle(context).bodyNormalBlack,
      )),
    );
  }
}
