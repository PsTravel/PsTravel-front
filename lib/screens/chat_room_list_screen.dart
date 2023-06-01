import 'package:flutter/material.dart';
import 'package:travel/models/chat_room_list_model.dart';
import 'package:travel/widgets/chat_room_list_widget.dart';

class ChatRoomListScreen extends StatelessWidget {
  final List<ChatRoomListModel> roomList;

  const ChatRoomListScreen({
    super.key,
    required this.roomList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: ListView.separated(
        itemCount: roomList.length,
        itemBuilder: (context, index) {
          var chatRoom = roomList[index];
          return ChatRoomList(chatRoom: chatRoom);
        },
        separatorBuilder: (context, index) => const Divider(
          height: 50,
        ),
      ),
    );
  }
}
