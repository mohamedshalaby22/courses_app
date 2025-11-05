import '../../../../core/presentation/widgets/custom_appbar.dart';
import '../widgets/auth_header.dart';
import 'package:flutter/material.dart';
import '../widgets/privacy_policy_text.dart';
import '../widgets/register_form.dart';
import '../../../../core/presentation/widgets/app_text_button.dart';
import 'package:courses_app/core/theme/app_spacing.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "إنشاء حساب جديد"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap.v40,
                  AuthHeader(
                    icon: Icons.lock,
                    title: "ابدأ رحلتك التعليمية معنا 🎓",
                    subTitle:
                        "أنشئ حسابك لتتابع دوراتك، وتحقق أهدافك خطوة بخطوة.",
                  ),
                  Gap.v64,
                  RegisterForm(),
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
            AppTextButton(text: "تسجيل", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
