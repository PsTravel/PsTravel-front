import 'package:flutter/material.dart';
import 'package:travel/models/chat_room_list_model.dart';
import 'package:travel/services/chat_api_service.dart';
import 'package:travel/widgets/chat_input_widget.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({
    super.key,
    required this.chatRoom,
  });

  final ChatRoomListModel chatRoom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text(chatRoom.opponent),
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: FutureBuilder(
              future: ChatApiService.getChatMessageList(chatRoom.chatRoomIdx),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      for (var messageData in snapshot.data!)
                        Text(messageData.message)
                    ],
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 40,
              ),
              child: ChatInput())
        ],
      ),
    );
  }
}
