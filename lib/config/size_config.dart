import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenHeight;
  static late double screenWidth;
  late Size proportionalSize;
  

  void init(BuildContext context) {
    const layoutSize = Size(375, 871);
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    proportionalSize = Size(
      screenWidth / layoutSize.width,
      screenHeight / layoutSize.height,
    );
  }

  double getWidth(double width) {
    return proportionalSize.width * width;
  }

  double getHeight(double width) {
    return proportionalSize.width * width;
  }

  double getFontSize(double fontSize) {
    return proportionalSize.width * fontSize * 0.8;
  }
}
