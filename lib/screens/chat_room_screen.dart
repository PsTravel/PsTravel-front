import 'package:flutter/material.dart';
import 'package:travel/models/chat_room_list_model.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({
    super.key,
    required this.chatRoom,
  });

  final ChatRoomListModel chatRoom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(chatRoom.opponent)),
      body: Column(
        children: [
          Container(),
          Row(
            children: [
              const InputChip(
                label: Text("data"),
              ),
              Container(),
            ],
          )
        ],
      ),
    );
  }
}
