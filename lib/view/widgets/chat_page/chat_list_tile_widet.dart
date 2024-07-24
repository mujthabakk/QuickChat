import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class ChatListTileWidet extends StatelessWidget {
  const ChatListTileWidet({
    super.key,
    required this.image,
    required this.userName,
    required this.lastMessage,
    required this.messageCount,
    required this.time,
    required this.onTap,
  });
  final String image;
  final String userName;
  final String lastMessage;
  final String messageCount;
  final String time;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
          image,
        ),
      ),
      title: Text(
        userName,
        style: context.typography.h3,
      ),
      subtitle: Text(
        lastMessage,
        style: context.typography.body,
      ),
      trailing: Column(
        children: [
          CircleAvatar(
            backgroundColor: AppColorPalettes.green500,
            radius: 10,
            child: Center(
              child: Text(
                messageCount,
                style: context.typography.bodySmall,
              ),
            ),
          ),
          Text(
            time,
            style: context.typography.bodySmall,
          )
        ],
      ),
    );
  }
}
