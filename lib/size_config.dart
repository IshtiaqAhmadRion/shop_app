import 'package:flutter/material.dart';

class Sizeconfig {
 
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double? screenHeight = Sizeconfig.screenHeight;
  return (inputHeight / 812.0) * screenHeight!;
}

double getProportionateScreenWidth(double inputWidth) {
  double? screenWidht = Sizeconfig.screenWidth;

  return (inputWidth / 375.0) * screenWidht!;
}
