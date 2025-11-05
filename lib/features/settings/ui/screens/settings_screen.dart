import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("صفحه الاعدادات", style: AppTextStyles.font24BlackBold),
        ),
      ),
    );
  }
}
