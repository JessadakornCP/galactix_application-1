// ignore_for_file: unnecessary_getters_setters

import 'package:flutter/material.dart';
import 'package:galactix_application/core/base/base_viewmodel.dart';

class ParcelViewModel extends BaseViewModel {
  ParcelViewModel({required BuildContext context});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  String? _trakingNo;
  String? get trakingNo => _trakingNo;
  set trakingNo(String? value) => _trakingNo = value;

  String? _name;
  String? get name => _name;
  set name(String? value) => _name = value;

  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  set dateTime(DateTime? value) => _dateTime = value;

  String? _tel;
  String? get tel => _tel;
  set tel(String? value) => _tel = value;

  String? _address;
  String? get address => _address;
  set address(String? value) => _address = value;
}
