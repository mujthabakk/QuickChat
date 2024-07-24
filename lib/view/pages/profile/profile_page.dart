import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/view/pages/profile/profile_settings_page.dart';
import 'package:chat__app/view/widgets/profile_page/profile_heade_widget.dart';
import 'package:chat__app/view/widgets/profile_page/profile_page_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends ConsumerWidget {
  static const routePath = "/profile";
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile ",
          style: context.typography.h1Bold,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ProfileHeaderWidget(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/e/e0/Userimage.png",
              ),
              name: "name",
              phone: "1234567890",
            ),
          ),
          SizedBox(
            height: context.spaces.space_400,
          ),
          TextWidget(
            text: "Profile Settings",
            onTap: () {
              context.push(ProfileSettingsPage.routePath);
            },
          ),
          TextWidget(
            text: "LogOut",
            onTap: () {},
          ),
          TextWidget(
            text: "Delete Account",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
