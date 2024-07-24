import 'package:chat__app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    required this.text,
    required this.onTap,
    super.key,
  });
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.spaces.space_200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: onTap, child: Text(text, style: context.typography.h3)),
          Divider()
        ],
      ),
    );
  }
}