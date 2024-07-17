import 'package:chat__app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MainBtnWidget extends StatelessWidget {
  final Function() onTap;
  final String btnTxt;
  final bool isLoading;

  const MainBtnWidget({
    super.key,
    required this.onTap,
    required this.btnTxt,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Shimmer.fromColors(
            baseColor: context.colors.secondary,
            highlightColor: context.colors.secondary,
            child: Container(
              width: double.infinity,
              height: context.spaces.space_600,
              decoration: BoxDecoration(
                color: context.colors.secondary,
                borderRadius: BorderRadius.circular(context.spaces.space_100),
              ),
            ),
          )
        : Container(
            width: double.infinity,
            height: context.spaces.space_600,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: context.colors.buttoncolor),
              borderRadius: BorderRadius.circular(context.spaces.space_100),
            ),
            child: ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(context.spaces.space_100),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: context.spaces.space_200,
                  vertical: context.spaces.space_100,
                ),
              ),
              child: Text(
                btnTxt,
                style: context.typography.buttonText,
              ),
            ),
          );
  }
}
