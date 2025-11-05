import 'package:courses_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("الصفحة الرئيسية", style: AppTextStyles.font24BlackBold),
        ),
      ),
    );
  }
}
