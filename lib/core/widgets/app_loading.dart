import 'package:flutter/material.dart';

class AppLoading {
  static basic() {
    return Column(
      children: [
        CircularProgressIndicator.adaptive(),
      ],
    );
  }
}
