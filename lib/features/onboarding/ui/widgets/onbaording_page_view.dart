import 'package:courses_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../data/models/onboarding_data.dart';
import '../../logic/onboarding_cubit.dart';

class OnbaordingPageView extends StatelessWidget {
  const OnbaordingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnboardingCubit>();
    return SizedBox(
      height: 420,
      child: PageView.builder(
        itemCount: OnboardingData.pages.length,
        onPageChanged: (value) => cubit.changePage(value),
        controller: cubit.pageController,
        allowImplicitScrolling: true,
        itemBuilder: (_, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Image.asset(
                OnboardingData.pages[index].image,
                height: 250,
                width: 250,
              ),
              Gap.v32,
              Text(
                OnboardingData.pages[index].title,
                style: AppTextStyles.font24BlackBold,
              ),
              Gap.v16,
              Text(
                OnboardingData.pages[index].description,
                style: AppTextStyles.font16GreyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
