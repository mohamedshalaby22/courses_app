import 'package:courses_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'font_weight_helper.dart';

class AppTextStyles {
  static const TextStyle font24BlackBold = TextStyle(
    fontSize: 24,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle font24BlackMedium = TextStyle(
    color: Colors.black,
    fontSize: 24.0,
    fontWeight: FontWeightHelper.medium,
  );
  static const TextStyle font16BlackMedium = TextStyle(
    color: Colors.black,
    fontSize: 16.0,
    fontWeight: FontWeightHelper.medium,
  );
  static const TextStyle font16PrimaryMedium = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 16.0,
    fontWeight: FontWeightHelper.medium,
  );
  static const TextStyle font16GreyRegular = TextStyle(
    color: Colors.grey,
    fontSize: 16.0,
    fontWeight: FontWeightHelper.regular,
  );
}
