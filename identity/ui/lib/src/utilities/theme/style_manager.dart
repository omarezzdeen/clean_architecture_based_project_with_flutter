import 'package:flutter/material.dart';

import 'font_manager.dart';


TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontName,
      color: color,
      fontWeight: fontWeight);
}

// regular style

TextStyle getRegularStyle({double fontSize = FontSizeManager.xSmall, required Color color}) {
  return _getTextStyle(fontSize, FontWeighManager.regular, color);
}

// medium style

TextStyle getMediumStyle(
    {double fontSize = FontSizeManager.xSmall, required Color color}) {
  return _getTextStyle(fontSize, FontWeighManager.medium, color);
}

// medium style

TextStyle getLightStyle(
    {double fontSize = FontSizeManager.xSmall, required Color color}) {
  return _getTextStyle(fontSize, FontWeighManager.light, color);
}

// bold style

TextStyle getBoldtStyle(
    {double fontSize = FontSizeManager.xSmall, required Color color}) {
  return _getTextStyle(fontSize, FontWeighManager.bold, color);
}

// semibold style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSizeManager.xSmall, required Color color}) {
  return _getTextStyle(fontSize, FontWeighManager.semiBold, color);
}