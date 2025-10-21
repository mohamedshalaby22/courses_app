import 'package:courses_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyText extends StatelessWidget {
  const PrivacyPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text(
          "بإنشاء حسابك، أنت توافق على ",
          style: AppTextStyles.font16GreyRegular.copyWith(fontSize: 12),
        ),
        Text(
          "الشروط والأحكام",
          style: AppTextStyles.font16PrimaryMedium.copyWith(fontSize: 12),
        ),
        Text(
          " و",
          style: AppTextStyles.font16GreyRegular.copyWith(fontSize: 12),
        ),
        Text(
          "سياسة الخصوصية",
          style: AppTextStyles.font16PrimaryMedium.copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
