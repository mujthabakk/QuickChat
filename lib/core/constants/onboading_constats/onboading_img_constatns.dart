import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'onboading_img_constatns.g.dart';

class OnboadingImgConstatns {
  static const String onboardingImg1 = 'assets/images/Container.svg';
  static const String onboardingImg2 = 'assets/images/Container (1).svg';
  static const String onboardingImg3 = 'assets/images/Add Profile Pic Button.svg';
}
@riverpod
OnboadingImgConstatns onboadingImgConstatns(OnboadingImgConstatnsRef ref){
  return OnboadingImgConstatns();

}