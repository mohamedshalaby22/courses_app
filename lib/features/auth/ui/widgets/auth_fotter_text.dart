import 'package:courses_app/core/theme/app_spacing.dart';
import 'package:courses_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthFooterText extends StatelessWidget {
  final String questionText;
  final String actionText;
  final VoidCallback onTap;

  const AuthFooterText({
    super.key,
    required this.questionText,
    required this.actionText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(questionText, style: AppTextStyles.font16GreyRegular),
        Gap.h12,
        GestureDetector(
          onTap: onTap,
          child: Text(actionText, style: AppTextStyles.font16PrimaryMedium),
        ),
      ],
    );
  }
}
