import 'package:courses_app/core/theme/app_colors.dart';
import 'package:courses_app/core/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styles.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });
  final String title, subTitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, size: 80, color: AppColors.primaryColor),
        Gap.v20,
        Center(
          child: Text(
            title,
            style: AppTextStyles.font24BlackBold,
            textAlign: TextAlign.center,
          ),
        ),
        Gap.v8,
        Text(
          subTitle,
          style: AppTextStyles.font16GreyRegular,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
