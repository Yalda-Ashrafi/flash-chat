import 'package:flutter/material.dart';
import 'package:flash_chat_starting_project/constants.dart';

class MessageBubble extends StatelessWidget {
  final String? message;
  final String? sender;
  final bool isMe;

  const MessageBubble({
    super.key,
    this.message,
    this.sender,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
        child: Material(
          borderRadius: BorderRadius.only(
            topLeft: isMe ? Radius.circular(bubbleRadius) : Radius.circular(0),
            topRight: isMe ? Radius.circular(0) : Radius.circular(bubbleRadius),
            bottomLeft: Radius.circular(bubbleRadius),
            bottomRight: Radius.circular(bubbleRadius),
          ),
          color: isMe ? kSendButtonColor : kSenderBoxColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Column(
              crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: <Widget>[
                Text(sender!,
                    style: const TextStyle(fontSize: 12.0, color: kChatEmailColor)),
                const SizedBox(height: 8.0),
                Text(message!,
                    style: const TextStyle(fontSize: 15.0, color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}