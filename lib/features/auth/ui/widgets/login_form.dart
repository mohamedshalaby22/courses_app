import 'auth_divider.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/app_text_styles.dart';
import 'package:courses_app/core/theme/app_colors.dart';
import 'package:courses_app/core/theme/app_spacing.dart';
import 'package:courses_app/core/widgets/app_text_form_field.dart';
import 'package:courses_app/core/helpers/navigation_extension.dart';
import 'package:courses_app/features/auth/ui/widgets/auth_fotter_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscureText = true;

  void toggleObscureText() {
    setState(() {
      isObscureText = !isObscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          isObscureText: isObscureText,
          validator: (value) {},
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(top: 12, bottom: 12),
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedSquareLock02,
              color: AppColors.primaryColor,
            ),
          ),
          suffixIcon: InkWell(
            onTap: toggleObscureText,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 12, bottom: 12),
              child: HugeIcon(
                icon: isObscureText
                    ? HugeIcons.strokeRoundedViewOffSlash
                    : HugeIcons.strokeRoundedEye,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
        Gap.v20,
        InkWell(
          onTap: () {
            context.pushNamed(Routes.resetPasswordScreen);
          },
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "هل نسيت كلمة المرور ؟",
              style: AppTextStyles.font16PrimaryMedium,
            ),
          ),
        ),
        Gap.v12,
        const AuthDivider(),
        Gap.v8,
        AuthFooterText(
          questionText: "ليس لديك حساب ؟",
          actionText: "إنشاء حساب جديد",
          onTap: () {
            context.pushNamedAndRemoveUntil(
              Routes.registerScreen,
              predicate: (Route<dynamic> route) => false,
            );
          },
        ),
        Gap.v20,
      ],
    );
  }
}
