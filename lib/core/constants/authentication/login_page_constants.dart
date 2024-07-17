import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'login_page_constants.g.dart';  

class LoginPageConstants {
  final enterText = 'Enter your phone number';
  final btnText = 'Continue';
  final txtPhoneNo = 'Phone Number';
}
@riverpod

LoginPageConstants loginPageConstants(LoginPageConstantsRef ref) {
  return LoginPageConstants();
}



 