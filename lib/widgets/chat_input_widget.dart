import 'package:flutter/material.dart';
import 'package:travel/services/chat_api_service.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({super.key});

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  String value = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: TextEditingController(text: value),
            decoration: const InputDecoration(
              hintText: '메세지',
            ),
            onChanged: (value) {
              if (value.isEmpty) {
                print("empty");
                return;
              }
            },
          ),
        ),
        IconButton(
            onPressed: () {
              ChatApiService.sendMessage();
            },
            icon: const Icon(Icons.send_rounded))
      ],
    );
  }
}
