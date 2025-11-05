import 'package:flutter/cupertino.dart';

class AppMainNavigator extends ChangeNotifier {
  AppTab _currentTab = AppTab.home;
  AppTab get currentTab => _currentTab;

  void gotoTab(AppTab tab) {
    _currentTab = tab;
    notifyListeners();
  }
}

final appMainNavigator = AppMainNavigator();

enum AppTab { home, search, collections, settings }
