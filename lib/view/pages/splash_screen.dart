import 'package:chat__app/core/constants/app_constats/app_constants.dart';
import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/view/pages/onboading/onboading_page_one.dart';
import 'package:chat__app/view/widgets/splas_screen/text_gradient_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends ConsumerWidget {
  static const routePath = '/SplashScreen';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appConstants = ref.watch(appConstantsProvider);
    return Scaffold(
      body: Center(
        child: GradientText(
          appConstants.appName,
          gradient: LinearGradient(
            colors: context.colors.buttoncolor,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          style: context.typography.h1,
        ),
      ),
      floatingActionButton: InkWell(
          onTap: () {
            context.push(OnboadingScreen.routePath);
          },
          child: Text(
            appConstants.skipText,
          )),
    );
  }
}
