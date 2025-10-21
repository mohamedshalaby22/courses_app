import 'package:flutter/material.dart';

class Gap {
  const Gap._();
  // ==================== VERTICAL SPACING ====================
  static const Widget v4 = SizedBox(height: 4);
  static const Widget v8 = SizedBox(height: 8);
  static const Widget v12 = SizedBox(height: 12);
  static const Widget v16 = SizedBox(height: 16);
  static const Widget v20 = SizedBox(height: 20);
  static const Widget v24 = SizedBox(height: 24);
  static const Widget v28 = SizedBox(height: 28);
  static const Widget v32 = SizedBox(height: 32);
  static const Widget v40 = SizedBox(height: 40);
  static const Widget v48 = SizedBox(height: 48);
  static const Widget v56 = SizedBox(height: 56);
  static const Widget v64 = SizedBox(height: 64);
  static const Widget v80 = SizedBox(height: 80);
  static const Widget v96 = SizedBox(height: 96);
  // ==================== HORIZONTAL SPACING ====================
  static const Widget h4 = SizedBox(width: 4);
  static const Widget h8 = SizedBox(width: 8);
  static const Widget h12 = SizedBox(width: 12);
  static const Widget h16 = SizedBox(width: 16);
  static const Widget h20 = SizedBox(width: 20);
  static const Widget h24 = SizedBox(width: 24);
  static const Widget h28 = SizedBox(width: 28);
  static const Widget h32 = SizedBox(width: 32);
  static const Widget h40 = SizedBox(width: 40);
  static const Widget h48 = SizedBox(width: 48);
  static const Widget h56 = SizedBox(width: 56);
  static const Widget h64 = SizedBox(width: 64);
  static const Widget h80 = SizedBox(width: 80);
  static const Widget h96 = SizedBox(width: 96);

  // ==================== DYNAMIC METHODS ====================

  /// Creates a vertical gap with custom height
  static SizedBox v(double height) => SizedBox(height: height);

  /// Creates a horizontal gap with custom width
  static SizedBox h(double width) => SizedBox(width: width);

  /// Creates a square gap with equal width and height
  static SizedBox square(double size) => SizedBox(width: size, height: size);

  /// Creates a custom gap with specific width and height
  static SizedBox custom(double width, double height) =>
      SizedBox(width: width, height: height);

  // ==================== RESPONSIVE METHODS ====================

  /// Creates a vertical gap based on screen height percentage
  static Widget vPercent(BuildContext context, double percentage) {
    return SizedBox(height: MediaQuery.of(context).size.height * percentage);
  }

  /// Creates a horizontal gap based on screen width percentage
  static Widget hPercent(BuildContext context, double percentage) {
    return SizedBox(width: MediaQuery.of(context).size.width * percentage);
  }

  // ==================== SPECIAL CASES ====================

  /// Creates a shrink box that takes minimum space
  static const Widget shrink = SizedBox.shrink();

  /// Creates an expanded vertical space
  static const Widget expandV = SizedBox(height: double.infinity);

  /// Creates an expanded horizontal space
  static const Widget expandH = SizedBox(width: double.infinity);

  /// Creates an expanded space in both directions
  static const Widget expand = SizedBox(
    width: double.infinity,
    height: double.infinity,
  );
}
