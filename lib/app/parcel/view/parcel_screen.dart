import 'package:flutter/material.dart';
import 'package:galactix_application/app/menu_drawer/view/menu_drawer_screen.dart';
import 'package:galactix_application/app/parcel/view_model/parcel_view_model.dart';
import 'package:galactix_application/config/config.dart';
import 'package:galactix_application/core/base/base_screen.dart';
import 'package:galactix_application/core/extension/context_extension.dart';
import 'package:galactix_application/core/widgets/template_screen.dart';
import 'package:galactix_application/core/widgets/textformfield_widget.dart';

class ParcelScreen extends StatelessWidget {
  const ParcelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      viewmodel: ParcelViewModel(context: context),
      builder: (context, viewmodel, child, deviceScreen) {
        return BuildTemplateScreen(
          scaffoldKey: viewmodel.scaffoldKey,
          onTapLeading: () => viewmodel.scaffoldKey.currentState?.openDrawer(),
          leading: Icon(
            Icons.format_list_bulleted_sharp,
            color: AppColors.instance.white,
          ),
          drawer: const MenuDrawerScreen(),
          child: _buildBody(context, viewmodel),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, ParcelViewModel viewmodel) {
    return Padding(
      padding: context.paddingMediumHorizontal,
      child: Column(
        children: [
          _tracking(context),
        ],
      ),
    );
  }

  Widget _tracking(BuildContext context) {
    return Card(
      color: Colors.green[100],
      child: Padding(
        padding: context.paddingMedium,
        child: Column(
          children: [
            BuildTextFormField(
              prefixIcon: Icon(Icons.assignment_add),
              labelText: 'Traking No.',
            ),
            BuildTextFormField(
              prefixIcon: Icon(Icons.assignment_add),
              labelText: 'Name',
            ),
            BuildTextFormField(
              prefixIcon: Icon(Icons.assignment_add),
              labelText: 'Date',
            ),
            BuildTextFormField(
              prefixIcon: Icon(Icons.assignment_add),
              labelText: 'Tel',
            ),
            BuildTextFormField(
              prefixIcon: Icon(Icons.assignment_add),
              labelText: 'Address',
            ),
          ],
        ),
      ),
    );
  }
}
