import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theme/app_colors.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.enabledBorder,
    this.focusedBorder,
    required this.hintText,
    this.contentPadding,
    this.backgroundColor,
    this.hintStyle,
    this.textStyle,
    this.isObscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.maxLines,
    this.inputFormatters,
    this.onChange,
    this.borderRadius,
    this.autofocus,
    this.textInputType,
    this.hoverColor,
    this.isScrollPadding = false,
    this.readOnly = false,
    required this.validator,
  });

  final InputBorder? enabledBorder, focusedBorder;
  final String hintText;
  final EdgeInsetsGeometry? contentPadding;
  final Color? backgroundColor, hoverColor;
  final TextStyle? hintStyle, textStyle;
  final bool? isObscureText, autofocus, readOnly;
  final Widget? suffixIcon, prefixIcon;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final Function(String?) validator;
  final Function(String value)? onChange;
  final double? borderRadius;
  final bool isScrollPadding;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      controller: controller,
      validator: (value) {
        return validator(value);
      },
      onChanged: (value) {
        if (onChange != null) {
          onChange!(value);
        }
      },
      style:
          textStyle ??
          const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
      obscureText: isObscureText ?? false,
      cursorColor: AppColors.primaryColor,
      maxLines: maxLines ?? 1,
      keyboardType: textInputType ?? TextInputType.text,
      inputFormatters: inputFormatters ?? [],
      scrollPadding: EdgeInsets.only(
        bottom: isScrollPadding ? MediaQuery.of(context).viewInsets.bottom : 0,
      ),
      autofocus: autofocus ?? false,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ??
            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
              borderSide: BorderSide(color: AppColors.primaryColor, width: 0.6),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
              borderSide: BorderSide(color: Colors.grey.shade50, width: 0.6),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
          borderSide: const BorderSide(color: Colors.red, width: 0.6),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
          borderSide: const BorderSide(color: Colors.red, width: 0.6),
        ),
        errorStyle: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.w300,
          fontSize: 14,
        ),
        suffixIcon: suffixIcon ?? const SizedBox(),
        prefixIcon: prefixIcon,
        hintText: hintText,
        fillColor: backgroundColor ?? Colors.deepPurple.shade50,
        filled: true,
        hintStyle:
            hintStyle ??
            const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),
      ),
    );
  }
}
