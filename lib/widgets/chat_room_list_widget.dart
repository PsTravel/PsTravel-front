import 'package:flutter/material.dart';
import 'package:travel/models/chat_room_list_model.dart';
import 'package:travel/screens/chat_room_screen.dart';

class ChatRoomList extends StatelessWidget {
  const ChatRoomList({
    super.key,
    required this.chatRoom,
  });

  final ChatRoomListModel chatRoom;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatRoomScreen(chatRoom: chatRoom),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const SizedBox(
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(chatRoom.opponent),
                  Text(chatRoom.lastMessage),
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.more_vert_sharp),
          ),
        ],
      ),
    );
  }
}
