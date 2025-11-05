import 'package:courses_app/core/utils/extension/navigation_extension.dart';
import 'package:courses_app/core/routing/routes.dart';

import '../../../../core/presentation/widgets/custom_appbar.dart';
import '../widgets/login_form.dart';
import '../widgets/auth_header.dart';
import 'package:flutter/material.dart';
import '../../../../core/presentation/widgets/app_text_button.dart';
import 'package:courses_app/core/theme/app_spacing.dart';
import '../widgets/privacy_policy_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "تسجيل الدخول"),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap.v40,
                  const AuthHeader(
                    title: 'مرحباً بعودتك 👋',
                    subTitle:
                        'سجّل دخولك لتكمل تعلمك، وتواصل اكتساب مهارات جديدة كل يوم.',
                    icon: Icons.lock_open_rounded,
                  ),
                  Gap.v64,
                  LoginForm(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        height: 115,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrivacyPolicyText(),
            Gap.v12,
            AppTextButton(
              text: "تسجيل الدخول",
              onPressed: () {
                context.pushNamedAndRemoveUntil(
                  Routes.mainLayout,
                  predicate: (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
