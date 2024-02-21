import 'package:flutter/material.dart';
import 'package:galactix_application/app/completed/view_model/completed_view_model.dart';
import 'package:galactix_application/app/menu_drawer/view/menu_drawer_screen.dart';
import 'package:galactix_application/config/config.dart';
import 'package:galactix_application/core/base/base_screen.dart';
import 'package:galactix_application/core/extension/context_extension.dart';
import 'package:galactix_application/core/widgets/template_screen.dart';
import 'package:galactix_application/core/widgets/textformfield_widget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      viewmodel: CompletedViewModel(context: context),
      onDispose: (viewmodel) => viewmodel.dispose(),
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

  Widget _buildBody(BuildContext context, CompletedViewModel viewModel) {
    return Column(
      children: [
        _form(context, viewModel),
        _showMap(context, viewModel),
      ],
    );
  }

  Widget _form(BuildContext context, CompletedViewModel viewModel) {
    return Column(
      children: [
        BuildTextFormField(
          bgColor: Colors.white,
          prefixIcon: Icon(Icons.assignment_add),
          labelText: 'Traking No.',
        ),
        BuildTextFormField(
          bgColor: Colors.white,
          prefixIcon: Icon(Icons.assignment_add),
          labelText: 'Name',
        ),
        BuildTextFormField(
          bgColor: Colors.white,
          prefixIcon: Icon(Icons.assignment_add),
          labelText: 'Date',
        ),
        BuildTextFormField(
          bgColor: Colors.white,
          prefixIcon: Icon(Icons.assignment_add),
          labelText: 'Tel',
        ),
        BuildTextFormField(
          bgColor: Colors.white,
          prefixIcon: Icon(Icons.assignment_add),
          labelText: 'Address',
        ),
      ],
    );
  }

  Widget _showMap(BuildContext context, CompletedViewModel viewModel) {
    return SizedBox(
      height: context.height * 0.4,
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: viewModel.latLng,
          zoom: 13,
        ),
      ),
    );
  }
}
