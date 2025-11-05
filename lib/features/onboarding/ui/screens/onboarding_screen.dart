import 'package:courses_app/core/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/onboarding_cubit.dart';
import '../widgets/onbaording_appbar.dart';
import '../widgets/onbaording_header.dart';
import '../widgets/onbaording_page_view.dart';
import '../widgets/onboarding_button.dart';
import '../widgets/onboarding_dots.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        final cubit = context.read<OnboardingCubit>();
        return Scaffold(
          appBar: OnboardingAppbar(),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Gap.v20,
                  const OnboardingHeader(),
                  Gap.v32,
                  const OnbaordingPageView(),
                  Gap.v32,
                  const OnboardingDots(),
                  Gap.v32,
                  OnbaordingButton(cubit: cubit),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
