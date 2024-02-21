// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:galactix_application/app/menu_drawer/model/menu_drawer_model.dart';
import 'package:galactix_application/config/config.dart';
import 'package:galactix_application/core/base/base_viewmodel.dart';
import 'package:galactix_application/core/constants/image/image_constants.dart';
import 'package:galactix_application/core/navigation/navigation.dart';

class MenuDrawerViewModel extends BaseViewModel {
  MenuDrawerViewModel({required BuildContext context});

  List<MenuDrawer> _menuDrawerList = [];
  List<MenuDrawer> get menuDrawerList => _menuDrawerList;
  set menuDrawerList(List<MenuDrawer> value) => menuDrawerList = value;

  MenuDrawer home = MenuDrawer(
    icon: ImageConstants.instance.home,
    name: 'Home',
    nav: AppNavConstants.DEFALT,
    background: AppColors.instance.green,
  );
  MenuDrawer parcel = MenuDrawer(
    icon: ImageConstants.instance.parcel,
    name: 'Parcel',
    nav: 'nav',
    background: AppColors.instance.red,
  );
  MenuDrawer completed = MenuDrawer(
    icon: ImageConstants.instance.completed,
    name: 'Completed',
    nav: 'nav',
    background: AppColors.instance.brown,
  );

  void init() {
    menuDrawerList.addAll([
      home,
      parcel,
      completed,
    ]);
  }
}
