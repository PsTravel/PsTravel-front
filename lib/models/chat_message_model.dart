class ChatMessageModel {
  final String sender, recipient, message;
  final int chatRoomIdx, chatMessageIdx;

  ChatMessageModel.fromJson(Map<String, dynamic> json)
      : sender = json["sender"],
        recipient = json["recipient"],
        message = json["message"],
        chatRoomIdx = json["chatRoomIdx"],
        chatMessageIdx = json["chatMessageIdx"];
}
