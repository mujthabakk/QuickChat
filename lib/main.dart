import 'package:chat__app/core/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends ConsumerWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static final scaffoldMessngerKey = GlobalKey<ScaffoldMessengerState>();

  const MyApp({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return MaterialApp(
      scaffoldMessengerKey: scaffoldMessngerKey,
      title: 'Flutter Demo',
      theme:  ref.watch(themeProvider),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child:SvgPicture.asset("assets/images/Add Profile Pic Button.svg"))
    );
  }
}
