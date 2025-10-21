import 'package:flutter/material.dart';

Route buildRoute(Widget child, {Object? arguments}) {
  return MaterialPageRoute(
    builder: (_) => child,
    settings: RouteSettings(arguments: arguments),
  );
}
