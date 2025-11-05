import 'package:flutter/material.dart';
import 'package:courses_app/core/theme/app_spacing.dart';
import 'package:courses_app/core/presentation/widgets/custom_appbar.dart';
import 'package:courses_app/core/presentation/widgets/app_text_button.dart';
import '../widgets/auth_header.dart';
import '../widgets/reset_password_form.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "تعيين كلمة مرور جديدة",
        showBack: true,
      ),
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
                    title: "كلمة مرور جديدة 🔒",
                    subTitle:
                        "أنشئ كلمة مرور قوية لتأمين حسابك. تأكد من أن تكون مختلفة عن السابقة.",
                    icon: Icons.lock_reset_rounded,
                  ),
                  Gap.v64,
                  const ResetPasswordForm(),
                  Gap.v32,
                  AppTextButton(text: "تحديث كلمة المرور", onPressed: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
