import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'onboading_constants.g.dart';

class OnboadingConstants {
  final onboadingPageOneText =
      "Break the boundaries and connect with people all over the world";
      final btnText="Get Started";


}
@riverpod
OnboadingConstants onboadingConstants(OnboadingConstantsRef ref){
  return OnboadingConstants();

}
