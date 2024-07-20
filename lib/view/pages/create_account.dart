import 'package:chat__app/core/constants/authentication/create_acconut_constats.dart';
import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/core/widget/main_btn_widget.dart';
import 'package:chat__app/core/widget/textfeild_widget.dart';
import 'package:chat__app/view/pages/chat_list_page.dart';
import 'package:chat__app/view/widgets/create_account/profile_image_selector_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CreateAccount extends ConsumerWidget {
  static const routePath = '/create_account';
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController textController = TextEditingController();
    final text = ref.watch(createAcconutConstatsProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfileImageSelectorWidget(
              onTap: () {},
              imageDbRef:
                  "https://upload.wikimedia.org/wikipedia/commons/e/e0/Userimage.png",
            ),
            Text(text.callYouText, style: context.typography.h2),
            Padding(
              padding: EdgeInsets.all(context.spaces.space_250),
              child: TextFeildWidget(
                hinttxt: text.userNameText,
                textController: textController,
                validator: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(context.spaces.space_250),
              child: MainBtnWidget(
                btnTxt: text.btnText,
                onTap: () {
                  context.push(ChatListPage.routePath);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
