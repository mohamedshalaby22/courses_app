import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';

class CollectionsScreen extends StatelessWidget {
  const CollectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("صفحه التصنيفات", style: AppTextStyles.font24BlackBold),
        ),
      ),
    );
  }
}
