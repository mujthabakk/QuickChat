import 'package:chat__app/core/constants/app_constats/app_constants.dart';
import 'package:chat__app/core/constants/chat_list_constats/chat_list_constats.dart';
import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/core/theme/color_palette.dart';
import 'package:chat__app/core/widget/textfeild_widget.dart';
import 'package:chat__app/view/pages/chat_page.dart';
import 'package:chat__app/view/widgets/splas_screen/text_gradient_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ChatListPage extends ConsumerWidget {
  static const routePath = '/chat_list_page';
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController textController = TextEditingController();
    final appName = ref.watch(appConstantsProvider).appName;
    final text = ref.watch(chatListConstatsProvider);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GradientText(
          appName,
          gradient: LinearGradient(
            colors: context.colors.buttoncolor,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          style: context.typography.h1,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(context.spaces.space_100),
            child: TextFeildWidget(
              prefixicon: const Icon(
                Icons.search,
              ),
              hinttxt: text.serchText,
              textController: textController,
              validator: (value) {},
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {
                      context.push(ChatPage.routePath);
                    },
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/e/e0/Userimage.png",
                      ),
                    ),
                    title: Text(
                      'User $index',
                      style: context.typography.h3,
                    ),
                    subtitle: Text(
                      'Message $index',
                      style: context.typography.body,
                    ),
                    trailing: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColorPalettes.green500,
                          radius: 10,
                          child: Center(
                            child: Text(
                              '2',
                              style: context.typography.bodySmall,
                            ),
                          ),
                        ),
                        Text(
                          "11:12",
                          style: context.typography.bodySmall,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
