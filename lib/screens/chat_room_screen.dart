import 'package:flutter/material.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("name")),
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
