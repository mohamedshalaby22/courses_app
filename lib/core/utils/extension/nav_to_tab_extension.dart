import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../navigation/app_navigation.dart';
import '../../routing/routes.dart';

extension NavToTab on BuildContext {
  void goToMainTab(AppTab tab) {
    Navigator.of(
      this,
    ).pushNamedAndRemoveUntil(Routes.mainLayout, (route) => false);
    GetIt.I<AppMainNavigator>().gotoTab(tab);
  }
}
