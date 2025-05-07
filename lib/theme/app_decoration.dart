import 'package:flutter/material.dart';
import 'package:mhart_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90001,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.gray900,
        border: Border.all(
          color: appTheme.blueGray90002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray90002 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray90002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.indigo700,
        border: Border.all(
          color: appTheme.whiteA700,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: appTheme.indigo700,
        border: Border.all(
          color: appTheme.whiteA700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineWhiteA7001 => BoxDecoration(
        border: Border.all(
          color: appTheme.whiteA700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: appTheme.blueGray900,
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL33 => BorderRadius.only(
        topLeft: Radius.circular(33.h),
        topRight: Radius.circular(32.h),
        bottomLeft: Radius.circular(33.h),
        bottomRight: Radius.circular(32.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get roundedBorder36 => BorderRadius.circular(
        36.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
