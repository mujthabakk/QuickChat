import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/view/pages/profile/profile_page.dart';
import 'package:chat__app/view/widgets/create_account/profile_image_selector_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileSettingsPage extends ConsumerWidget {
  static const routePath = "/ProfileSettingsPage";

  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ProfileImageSelectorWidget(
              onTap: () {},
              imageDbRef:
                  "https://upload.wikimedia.org/wikipedia/commons/e/e0/Userimage.png",
            ),
          ),
        ],
      ),
    );
  }
}
