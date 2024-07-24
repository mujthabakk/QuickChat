import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/core/theme/color_palette.dart';
import 'package:chat__app/view/pages/chat/receive_files_widget.dart';
import 'package:chat__app/view/pages/chat/received_message_widget.dart';
import 'package:chat__app/view/pages/chat/send_files_widget.dart';
import 'package:chat__app/view/pages/chat/sent_message_widet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatPage extends ConsumerWidget {
  static const routePath = '/chat_page';
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        leading: Padding(
          padding: EdgeInsets.only(left: context.spaces.space_100),
          child: const CircleAvatar(
            radius: 2,
            backgroundImage: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/e/e0/Userimage.png",
            ),
          ),
        ),
        title: Column(
          children: [
            Text('name'),
            Text('last seen', style: context.typography.bodySmall),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.video_call,
              size: 33,
            ),
            onPressed: () {},
          ),
          SizedBox(width: context.spaces.space_200),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: context.spaces.space_900,
                      top: context.spaces.space_150,
                      left: context.spaces.space_200),
                  child: const SendMessageWidget(
                    imageUrl:
                        'https://upload.wikimedia.org/wikipedia/commons/e/e0/Userimage.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: context.spaces.space_900,
                      top: context.spaces.space_150,
                      left: context.spaces.space_200),
                  child: const SendFilesWidget(
                    messageContent: 'File sent',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: context.spaces.space_900,
                      top: context.spaces.space_150,
                      right: context.spaces.space_200),
                  child: const ReceiveMessageWidget(
                    imageUrl:
                        'https://upload.wikimedia.org/wikipedia/commons/e/e0/Userimage.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: context.spaces.space_900,
                      top: context.spaces.space_150,
                      right: context.spaces.space_200),
                  child: const ReceiveFilesWidget(
                    messageContent: 'File received',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: ChatpageTextFileWidget(
                    hintText: 'Wait, I am going...',
                  ),
                  //
                ),
                IconButton(
                  icon:
                      const Icon(Icons.send, color: AppColorPalettes.green500),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatpageTextFileWidget extends StatelessWidget {
  const ChatpageTextFileWidget(
      {super.key, this.onPressed, required, required this.hintText});
  final void Function()? onPressed;

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: context.colors.secondary,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: context.spaces.space_100,
            horizontal: context.spaces.space_100),
        prefixIcon: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.attach_file,
            )),
        hintText: hintText,
        hintStyle: const TextStyle(color: AppColorPalettes.white500),
        filled: true,
        fillColor: context.colors.messageBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
