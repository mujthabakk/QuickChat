import 'package:chat__app/core/constants/onboading_constats/onboading_constants.dart';
import 'package:chat__app/core/constants/onboading_constats/onboading_img_constatns.dart';
import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/core/widget/main_btn_widget.dart';
import 'package:chat__app/view/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class OnboadingScreen extends ConsumerWidget {
  static const routePath = '/OnboadingScreen';

  const OnboadingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imgage = ref.watch(onboadingImgConstatnsProvider);
    final textConstatns = ref.watch(onboadingConstantsProvider);
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: context.spaces.space_600 * 7,
          width: double.infinity,
          child: SvgPicture.asset(
            imgage.onboardingImg,
            // fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(context.spaces.space_400),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              textConstatns.onboadingPageOneText,
              style: context.typography.h1,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(context.spaces.space_400),
          child: MainBtnWidget(
            onTap: () {
              context.push(LoginPage.routePath);
            },
            btnTxt: textConstatns.btnText,
          ),
        )
      ],
    ));
  }
}
