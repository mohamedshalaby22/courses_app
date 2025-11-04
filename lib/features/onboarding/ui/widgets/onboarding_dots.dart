import 'package:courses_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/onboarding_data.dart';
import '../../logic/onboarding_cubit.dart';

class OnboardingDots extends StatelessWidget {
  const OnboardingDots({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        final cubit = context.read<OnboardingCubit>();
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(OnboardingData.pages.length, (index) {
              bool isActive = index == cubit.currentIndex;
              return AnimatedContainer(
                duration: Duration(milliseconds: 700),
                curve: Curves.fastOutSlowIn,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: isActive ? 30 : 10,
                height: isActive ? 7 : 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isActive
                      ? AppColors.primaryColor
                      : Colors.grey.shade400,
                ),
              );
            }),
          ],
        );
      },
    );
  }
}
