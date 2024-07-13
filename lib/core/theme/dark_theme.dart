import 'package:chat__app/core/theme/color_palette.dart';
import 'package:chat__app/core/theme/extensions/app_color_extension.dart';
import 'package:chat__app/core/theme/extensions/app_shadow_extension.dart';
import 'package:chat__app/core/theme/extensions/app_typography_extension.dart';
import 'package:chat__app/core/theme/extensions/space_extension.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dark_theme.g.dart';

final _darktheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColorPalettes.grey1000,
    appBarTheme: const AppBarTheme(backgroundColor: AppColorPalettes.grey1000),
    extensions: [
      //AppColorExtension
      AppColorExtension(
        buttoncolor: [AppColorPalettes.green500, AppColorPalettes.green300],
        primary: AppColorPalettes.black500,
        secondary: AppColorPalettes.white500,
        text: AppColorPalettes.grey850,
        textSubtle: AppColorPalettes.grey200,
        btnText: AppColorPalettes.black500,
        border: AppColorPalettes.silver300,
        bottomNavBorder: AppColorPalettes.grey600,
        appBarBackground: AppColorPalettes.green500,
        cardBackground: AppColorPalettes.grey900,
        iconButtonBackgroud: AppColorPalettes.grey900,
        iconButtonIcon: AppColorPalettes.white500,
        bottomNavBar: AppColorPalettes.grey1000,
        messageBackground: AppColorPalettes.green300,
      ),
      //AppSpaceExtension
      AppSpaceExtension.fromBaseSpace(8),
      //AppTypographyExtension
      AppTypographyExtension(
        body: const TextStyle(
            fontSize: 14,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w500),
        bodyWhite: const TextStyle(
            fontSize: 14,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w500),
        bodyLarge: const TextStyle(
            fontSize: 18,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w500),
        bodySemibold: const TextStyle(
            fontSize: 14,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w600),
        bodyLargeSemiBold: const TextStyle(
            fontSize: 18,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w600),
        bodySmall: const TextStyle(
            fontSize: 10,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w500),
        bodySmallSemiBold: const TextStyle(
            fontSize: 10,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w600),
        h1: const TextStyle(
            fontSize: 32,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w500),
        h1SemiBold: const TextStyle(
            fontSize: 32,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w600),
        h1Bold: const TextStyle(
            fontSize: 32,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w700),
        h2: const TextStyle(
            fontSize: 24,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w500),
        h2SemiBold: const TextStyle(
            fontSize: 24,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w600),
        h2Bold: const TextStyle(
            fontSize: 24,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w700),
        h3: const TextStyle(
            fontSize: 20,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w500),
        h3SemiBold: const TextStyle(
            fontSize: 20,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w600),
        h3Bold: const TextStyle(
            fontSize: 20,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w700),
        buttonText: const TextStyle(
            fontSize: 14,
            fontFamily: 'poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w600),
      ),
      //AppShadowExtension
      ShadowExtension(
          primary: const BoxShadow(
            blurRadius: 1,
            spreadRadius: 0,
            color: AppColorPalettes.grey600,
          ),
          secondary: const BoxShadow(
            blurRadius: 1,
            spreadRadius: 0,
            color: AppColorPalettes.grey600,
          )),
    ]);

@riverpod
ThemeData darkTheme(DarkThemeRef ref) {
  return _darktheme;
}
