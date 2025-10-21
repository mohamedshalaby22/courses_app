import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import '../../../../core/theme/app_text_styles.dart';
import 'package:courses_app/core/theme/app_colors.dart';
import 'package:courses_app/core/theme/app_spacing.dart';
import 'package:courses_app/core/widgets/app_text_form_field.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
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
        Text("كلمة المرور الجديدة", style: AppTextStyles.font16BlackMedium),
        Gap.v8,
        AppTextFormField(
          hintText: "أدخل كلمة المرور الجديدة",
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
        Text("تأكيد كلمة المرور", style: AppTextStyles.font16BlackMedium),
        Gap.v8,
        AppTextFormField(
          hintText: "أعد إدخال كلمة المرور للتأكيد",
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
      ],
    );
  }
}
