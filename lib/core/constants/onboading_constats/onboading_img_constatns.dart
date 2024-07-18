import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'onboading_img_constatns.g.dart';

class OnboadingImgConstatns {
  final onboardingImg = 'assets/images/Onboading-img.svg';
  final loginimg = 'assets/images/Container.svg';
  final otpimg = 'assets/images/Container (1).svg';

  final galleryImg = 'assets/images/Add Profile Pic Button.svg';
}

@riverpod
OnboadingImgConstatns onboadingImgConstatns(OnboadingImgConstatnsRef ref) {
  return OnboadingImgConstatns();
}
