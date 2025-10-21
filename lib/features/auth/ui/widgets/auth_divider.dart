import 'package:flutter/material.dart';
import '../../../../core/theme/app_spacing.dart';
import 'package:courses_app/core/theme/app_text_styles.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(height: 0.3, color: Colors.grey.shade400)),
        Gap.h12,
        Text("أو", style: AppTextStyles.font16GreyRegular),
        Gap.h12,
        Expanded(child: Container(height: 0.3, color: Colors.grey.shade400)),
      ],
    );
  }
}
