import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'otp_page_constants.g.dart';

class OtpPageConstants {
  final enterCodeText = 'Enter your verification code';
  final weHaveText = 'We have sent a verification code to';
  final btnText = "Continue";
}
@riverpod
OtpPageConstants otpPageConstants(OtpPageConstantsRef ref){
  return OtpPageConstants();
}