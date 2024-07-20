import 'package:chat__app/main.dart';
import 'package:chat__app/view/pages/chat_list_page.dart';
import 'package:chat__app/view/pages/chat_page.dart';
import 'package:chat__app/view/pages/create_account.dart';
import 'package:chat__app/view/pages/login_page.dart';
import 'package:chat__app/view/pages/onboading/onboading_page_one.dart';
import 'package:chat__app/view/pages/otp_page.dart';
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
      GoRoute(
        path: OtpPage.routePath,
        builder: (context, state) {
          final extra = state.extra as Map<String, String>;
          return OtpPage(
            phoneNumber: extra['phoneNumber'] ?? "",
          );
        },
      ),
      GoRoute(
        path: CreateAccount.routePath,
        builder: (context, state) {
          return const CreateAccount();
        },
      ),
      GoRoute(
        path: ChatListPage.routePath,
        builder: (context, state) {
          return const ChatListPage();
        },
      ),
      GoRoute(
        path: ChatPage.routePath,
        builder: (context, state) {
          return const ChatPage();
        },
      ),
    ]);
