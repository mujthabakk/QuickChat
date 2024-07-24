import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class SendMessageWidget extends StatelessWidget {
  final String? messageContent;
  final String imageUrl;

  const SendMessageWidget({
    super.key,
    this.messageContent,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.spaces.space_100),
      decoration: BoxDecoration(
        color: AppColorPalettes.green300,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            messageContent ?? "",
            style: context.typography.body
                .copyWith(color: AppColorPalettes.black500),
          ),
          SizedBox(height: context.spaces.space_100),
          Image.network(
            imageUrl,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}