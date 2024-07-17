import 'package:riverpod_annotation/riverpod_annotation.dart';
part "app_constants.g.dart";

class AppConstants {
  final appName = "QuickChat";
  final skipText = "skip";
}

@riverpod
AppConstants appConstants(AppConstantsRef ref) {
  return AppConstants();
}
