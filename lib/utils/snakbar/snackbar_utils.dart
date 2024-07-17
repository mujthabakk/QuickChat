import 'package:chat__app/core/widget/error_snackbar.dart';
import 'package:chat__app/main.dart';

class SnackbarUtils {
  /// Show a message as a snackbar
  ///
  /// [message] Is the message to be shown to the user
  static void showError(String message) {
    MyApp.scaffoldMessngerKey.currentState!
        .showSnackBar(ErrorSnackBar(errorMessage: message));
  }
}
