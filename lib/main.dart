import 'package:courses_app/courses_app.dart';
import 'package:flutter/material.dart';
import 'core/startup/app_initializer.dart';

void main() async {
  await AppInitializer().init();
  runApp(const CoursesApp());
}
