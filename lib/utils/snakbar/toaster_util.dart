import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/core/theme/color_palette.dart';
import 'package:chat__app/main.dart';
import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:delightful_toast/toast/utils/enums.dart';
import 'package:flutter/material.dart';

final class ToasterUtil {
  static void showMessage({
    required String message,
    Icon? icon,
  }) {
    DelightToastBar(
      position: DelightSnackbarPosition.top,
      autoDismiss: true,
      builder: (context) => ToastCard(
        leading: icon,
        title: Text(
          message,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: context.spaces.space_200,
            color: AppColorPalettes
                .white500, // Set text color to white for better contrast
          ),
        ),
        color: context.colors.secondary, // Set a nice background color
        // Add padding for better spacing
      ),
    ).show(MyApp.navigatorKey.currentContext!);
  }
}
