import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class ReceiveFilesWidget extends StatelessWidget {
  final String messageContent;

  const ReceiveFilesWidget({
    super.key,
    required this.messageContent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.spaces.space_100),
      decoration: BoxDecoration(
        color: AppColorPalettes.green500,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        messageContent,
        style:
            context.typography.body.copyWith(color: AppColorPalettes.black500),
      ),
    );
  }
}
