import 'package:flutter/material.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({super.key});

  @override
  State<ChatInput> createState() => _ChatInput();
}

class _ChatInput extends State<ChatInput> {
  final String value = "";

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
        IconButton(onPressed: () {}, icon: const Icon(Icons.send_rounded))
      ],
    );
  }
}
