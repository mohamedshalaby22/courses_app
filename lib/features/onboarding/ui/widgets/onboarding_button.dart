import 'package:courses_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../logic/onboarding_cubit.dart';

class OnbaordingButton extends StatelessWidget {
  const OnbaordingButton({super.key, required this.cubit});
  final OnboardingCubit cubit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => cubit.onNext(context: context),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 900),
        curve: Curves.fastOutSlowIn,
        width: 200,
        height: 50,
        padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColors.primaryColor,
        ),
        child: Center(
          child: Text(
            cubit.currentIndex == 2 ? "ابدأ" : "التالي",
            style: AppTextStyles.font18WhiteMedium,
          ),
        ),
      ),
    );
  }
}
