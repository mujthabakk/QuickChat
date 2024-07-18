import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'create_acconut_constats.g.dart';

class CreateAcconutConstats {
  final callYouText = 'What should people call you?';
  final btnText = 'Continue';
  final userNameText = "Username";
}

@riverpod
CreateAcconutConstats createAcconutConstats(CreateAcconutConstatsRef ref) {
  return CreateAcconutConstats();
}
