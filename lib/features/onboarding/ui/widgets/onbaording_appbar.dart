import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../logic/onboarding_cubit.dart';

class OnboardingAppbar extends StatelessWidget implements PreferredSizeWidget {
  const OnboardingAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        final cubit = context.read<OnboardingCubit>();
        return AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actionsPadding: EdgeInsetsDirectional.symmetric(horizontal: 16),
          leading: cubit.currentIndex == 0
              ? null
              : IconButton(
                  onPressed: () => cubit.onBack(),
                  icon: const Icon(Icons.arrow_back, size: 20),
                ),
          actions: [
            TextButton(
              onPressed: () => cubit.onSkip(),
              child: Text("تخطي", style: AppTextStyles.font16BlackMedium),
            ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
