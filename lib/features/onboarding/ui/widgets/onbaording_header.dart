import 'package:flutter/material.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("كورساتي", style: AppTextStyles.font24PrimaryBold),
        Gap.h12,
        Image.asset(
          Assets.splashLogo,
          width: 30,
          height: 30,
          color: AppColors.primaryColor,
        ),
      ],
    );
  }
}
