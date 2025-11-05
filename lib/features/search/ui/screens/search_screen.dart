import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("صفحه البحث", style: AppTextStyles.font24BlackBold),
          ),
        ),
      ),
    );
  }
}
