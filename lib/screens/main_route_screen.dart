import 'package:flutter/material.dart';
import 'package:travel/models/chat_room_list_model.dart';
import 'package:travel/screens/chat_room_list_screen.dart';
import 'package:travel/screens/home_map_screen.dart';
import 'package:travel/services/chat_api_service.dart';

class MainRouteScreen extends StatefulWidget {
  const MainRouteScreen({super.key});

  @override
  State<MainRouteScreen> createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRouteScreen> {
  int currentPageIndex = 0;

  void tapItem(item) {
    setState(() {
      currentPageIndex = item;
    });
  }

  final Future<List<ChatRoomListModel>> chatRoomlist =
      ChatApiService.getChatRoomList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Scaffold(
        body: currentPageIndex == 0
            ? const HomeMapScreen()
            : FutureBuilder(
                future: chatRoomlist,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ChatRoomListScreen(
                      roomList: snapshot.data!,
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPageIndex,
          onTap: tapItem,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.map_rounded), label: "지도"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_rounded), label: "채팅"),
          ],
        ),
      ),
    );
  }
}
