import 'package:courses_app/core/helpers/navigation_extension.dart';
import 'package:courses_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/models/onboarding_data.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());

  PageController pageController = PageController();

  // change page
  int currentIndex = 0;
  void changePage(int index) {
    currentIndex = index;
    emit(OnboardingChange());
  }

  // onNext
  void onNext({required BuildContext context}) {
    if (currentIndex == OnboardingData.pages.length - 1) {
      context.pushReplacementNamed(Routes.loginScreen);
    } else {
      currentIndex++;
      pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 900),
        curve: Curves.fastOutSlowIn,
      );
    }
    HapticFeedback.selectionClick();
    emit(OnboardingChange());
  }

  // onSkip
  void onSkip() {
    pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 900),
      curve: Curves.fastOutSlowIn,
    );
    HapticFeedback.selectionClick();
    emit(OnboardingChange());
  }

  // onBack
  void onBack() {
    if (currentIndex > 0) {
      currentIndex--;
      pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 900),
        curve: Curves.fastOutSlowIn,
      );
    }
    HapticFeedback.selectionClick();
    emit(OnboardingChange());
  }
}
