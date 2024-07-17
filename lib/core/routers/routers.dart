import 'package:chat__app/main.dart';
import 'package:chat__app/view/pages/login_page.dart';
import 'package:chat__app/view/pages/onboading/onboading_page_one.dart';
import 'package:chat__app/view/pages/splash_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
    navigatorKey: MyApp.navigatorKey,
    initialLocation: SplashPage.routePath,
    routes: [
      GoRoute(
        path: SplashPage.routePath,
        builder: (context, state) {
          return const SplashPage();
        },
      ),
      GoRoute(
        path: OnboadingScreen.routePath,
        builder: (context, state) {
          return const OnboadingScreen();
        },
      ),
      GoRoute(
        path: LoginPage.routePath,
        builder: (context, state) {
          return const LoginPage();
        },
      ),
    ]);
