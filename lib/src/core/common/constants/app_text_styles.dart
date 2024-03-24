import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const _defaultFontFamily = 'Manrope';

abstract class AppTextStyles {
  static final subtitleStyle = TextStyle(
    fontFamily: _defaultFontFamily,
    color: const Color(0xFF4A4A4A),
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
  );

  // Caption
  static final caption1 = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 35.sp,
    height: 24.h / 35.sp,
  );
  static final caption2 = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 27.sp,
    height: 38.h / 27.sp,
    fontWeight: FontWeight.w800,
  );
  static final caption3 = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 20.sp,
    height: 28.h / 20.sp,
    fontWeight: FontWeight.bold,
  );
  static final caption4 = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 18.sp,
    height: 26.h / 18.sp,
    fontWeight: FontWeight.bold,
  );
  static final caption5 = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 18.sp,
    height: 26.h / 18.sp,
  );

  // Text
  static final text1 = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 12.sp,
    height: 20.h / 12.sp,
    fontWeight: FontWeight.w600,
  );
  static final text2 = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 12.sp,
    height: 17.h / 12.sp,
  );
  static final text3 = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 10.sp,
    height: 14.h / 10.sp,
  );

  // Other
  static final productName = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 14.sp,
    height: 20.h / 14.sp,
    fontWeight: FontWeight.w500,
  );
  static final viewAll = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 14.sp,
    height: 20.h / 14.sp,
    fontWeight: FontWeight.w500,
  );
  static final readMore = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 12.sp,
  );
  static final price = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 16.sp,
    height: 24.h / 16.sp,
    fontWeight: FontWeight.bold,
  );
  static final rating = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 14.sp,
    height: 20.h / 14.sp,
  );
}
