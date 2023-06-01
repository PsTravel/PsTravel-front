import 'package:flutter/material.dart';
import 'package:travel/models/chat_room_list_model.dart';
import 'package:travel/screens/chat_room_screen.dart';

class ChatRoomListScreen extends StatelessWidget {
  final List<ChatRoomListModel> roomList;

  const ChatRoomListScreen({
    super.key,
    required this.roomList,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ChatRoomScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: ListView.separated(
          itemCount: roomList.length,
          itemBuilder: (context, index) {
            var chatRoom = roomList[index];
            return Container(
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
                          const Text("contents"),
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
          },
          separatorBuilder: (context, index) => const Divider(
            height: 50,
          ),
        ),
      ),
    );
  }
}
