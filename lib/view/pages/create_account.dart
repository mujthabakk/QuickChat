import 'package:chat__app/view/widgets/create_account/profile_image_selector_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateAccount extends ConsumerWidget {
  static const routePath = '/create_account';
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            )
          ],
        ),
      ),
    );
  }
}
