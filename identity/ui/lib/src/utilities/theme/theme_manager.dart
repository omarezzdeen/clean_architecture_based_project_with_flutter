import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'style_manager.dart';
import '../values/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    // ripple color
    splashColor: ColorManager.primary,
    // cardview theme
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSizes.xSmall),
    // app bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSizes.xSmall,
        shadowColor: ColorManager.lightPrimary,
        titleTextStyle: getRegularStyle(
            color: ColorManager.white, fontSize: FontSizeManager.medium)),
    // button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.lightPrimary),
    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(
                color: ColorManager.white, fontSize: FontSizeManager.large),
            primary: ColorManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(FontSizeManager.xSmall)))),
    // text theme
    textTheme: TextTheme(
        displayLarge: getLightStyle(
            color: ColorManager.white, fontSize: FontSizeManager.xLarge),
        headline1: getSemiBoldStyle(
            color: ColorManager.darkGrey, fontSize: FontSizeManager.medium),
        subtitle1: getMediumStyle(
            color: ColorManager.lightGrey, fontSize: FontSizeManager.small),
        caption: getRegularStyle(color: ColorManager.grey1),
        bodyText1: getRegularStyle(color: ColorManager.grey)),
    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
        // content padding
        contentPadding: EdgeInsets.all(AppPaddings.small),
        // hint style
        hintStyle: getRegularStyle(
            color: ColorManager.grey, fontSize: FontSizeManager.small),
        labelStyle: getMediumStyle(
            color: ColorManager.grey, fontSize: FontSizeManager.small),
        errorStyle: getRegularStyle(color: ColorManager.error),

        // enabled border style
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSizes.micro),
            borderRadius:
                const BorderRadius.all(Radius.circular(AppSizes.small))),

        // focused border style
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.grey, width: AppSizes.micro),
            borderRadius:
                const BorderRadius.all(Radius.circular(AppSizes.small))),

        // error border style
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSizes.micro),
            borderRadius:
                const BorderRadius.all(Radius.circular(AppSizes.small))),
        // focused border style
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSizes.micro),
            borderRadius:
                const BorderRadius.all(Radius.circular(AppSizes.small)))),
    // label style
  );
}
