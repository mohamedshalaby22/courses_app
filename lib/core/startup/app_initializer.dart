import 'package:flutter/material.dart';
import '../di/injection.dart';

class AppInitializer {
  static final AppInitializer _instance = AppInitializer._internal();
  factory AppInitializer() => _instance;
  AppInitializer._internal();

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    setupInjection();
  }
}
