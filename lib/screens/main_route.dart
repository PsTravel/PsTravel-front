import 'package:flutter/material.dart';
import 'package:travel/screens/chat_room_list.dart';
import 'package:travel/screens/home_map.dart';

class MainRoute extends StatefulWidget {
  const MainRoute({super.key});

  @override
  State<MainRoute> createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRoute> {
  int currentPageIndex = 0;

  void tapItem(item) {
    setState(() {
      currentPageIndex = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Scaffold(
        body: currentPageIndex == 0 ? const HomeMap() : const ChatRoomList(),
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
