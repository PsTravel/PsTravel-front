class ChatRoomListModel {
  final String opponent, modifiedAt;
  final int chatRoomIdx;

  ChatRoomListModel.fromJson(Map<String, dynamic> json)
      : opponent = json["opponent"],
        modifiedAt = json["modifiedAt"],
        chatRoomIdx = json["chatRoomIdx"];
}
