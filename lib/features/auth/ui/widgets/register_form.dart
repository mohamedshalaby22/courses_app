import 'package:flutter/material.dart';

import 'package:hugeicons/hugeicons.dart';

import 'package:courses_app/core/helpers/navigation_extension.dart';
import 'package:courses_app/core/theme/app_colors.dart';
import 'package:courses_app/core/theme/app_spacing.dart';
import 'package:courses_app/core/widgets/app_text_form_field.dart';
import 'package:courses_app/features/auth/ui/widgets/auth_fotter_text.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theme/app_text_styles.dart';

import 'auth_divider.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isNewPasswordObscured = true;
  bool isConfirmPasswordObscured = true;

  void toggleNewPasswordVisibility() {
    setState(() {
      isNewPasswordObscured = !isNewPasswordObscured;
    });
  }

  void toggleConfirmPasswordVisibility() {
    setState(() {
      isConfirmPasswordObscured = !isConfirmPasswordObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("الأسم بالكامل", style: AppTextStyles.font16BlackMedium),
        Gap.v8,
        AppTextFormField(
          hintText: "ادخل الاسم بالكامل",
          validator: (value) {},
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(top: 12, bottom: 12),
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedUser,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        Gap.v20,
        Text("البريد الالكتروني", style: AppTextStyles.font16BlackMedium),
        Gap.v8,
        AppTextFormField(
          hintText: "ادخل البريد الالكتروني",
          validator: (value) {},
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(top: 12, bottom: 12),
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedMail01,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        Gap.v20,
        Text("كلمة المرور", style: AppTextStyles.font16BlackMedium),
        Gap.v8,
        AppTextFormField(
          hintText: "ادخل كلمة المرور",
          isObscureText: isNewPasswordObscured,
          validator: (value) {},
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(top: 12, bottom: 12),
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedSquareLock02,
              color: AppColors.primaryColor,
            ),
          ),
          suffixIcon: InkWell(
            onTap: toggleNewPasswordVisibility,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 12, bottom: 12),
              child: HugeIcon(
                icon: isNewPasswordObscured
                    ? HugeIcons.strokeRoundedViewOffSlash
                    : HugeIcons.strokeRoundedEye,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
        Gap.v20,
        Text("اعد كتابة كلمة المرور", style: AppTextStyles.font16BlackMedium),
        Gap.v8,
        AppTextFormField(
          hintText: "ادخل كلمة المرور",
          isObscureText: isConfirmPasswordObscured,
          validator: (value) {},
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(top: 12, bottom: 12),
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedSquareLock02,
              color: AppColors.primaryColor,
            ),
          ),
          suffixIcon: InkWell(
            onTap: toggleConfirmPasswordVisibility,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 12, bottom: 12),
              child: HugeIcon(
                icon: isConfirmPasswordObscured
                    ? HugeIcons.strokeRoundedViewOffSlash
                    : HugeIcons.strokeRoundedEye,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
        Gap.v20,
        const AuthDivider(),
        Gap.v8,
        AuthFooterText(
          questionText: "لديك حساب؟",
          actionText: "تسجيل دخول",
          onTap: () {
            context.pushNamedAndRemoveUntil(
              Routes.loginScreen,
              predicate: (Route<dynamic> route) => false,
            );
          },
        ),
      ],
    );
  }
}
