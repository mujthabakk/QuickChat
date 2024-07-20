

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'chat_list_constats.g.dart';

class ChatListConstats{
  final serchText="Search...";
}
@riverpod
ChatListConstats chatListConstats  (ChatListConstatsRef ref) {
  return  ChatListConstats() ;
}