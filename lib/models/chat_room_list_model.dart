class ChatRoomListModel {
  final String opponent, lastMessage, modifiedAt;
  final int chatRoomIdx;

  ChatRoomListModel.fromJson(Map<String, dynamic> json)
      : opponent = json["opponent"],
        modifiedAt = json["modifiedAt"],
        lastMessage = json["lastMessage"],
        chatRoomIdx = json["chatRoomIdx"];
}
