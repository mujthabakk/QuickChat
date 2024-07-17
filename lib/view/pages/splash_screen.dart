import 'package:chat__app/core/constants/app_constats/app_constants.dart';
import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/view/widgets/splas_screen/text_gradient_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appName = ref.watch(appConstantsProvider);
    return Scaffold(
      body: Center(
        child: GradientText(
          appName.appName,
          gradient: LinearGradient(
            colors: context.colors.buttoncolor,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          style: context.typography.h1,
        ),
      ),
    );
  }
}
