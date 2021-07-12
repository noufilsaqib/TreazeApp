import 'package:flutter/material.dart';

enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, sent }

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

  ChatMessage({
    this.text = '',
    @required this.messageType,
    @required this.messageStatus,
    @required this.isSender,
  });
}

List demoChatMessages = [
  ChatMessage(
    text: "Hi, I was wondering if you could help me with the Treasure Hunt?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.sent,
    isSender: true,
  ),
  ChatMessage(
    text: "Hey John, please hold on! Someone will be right with you.",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.sent,
    isSender: false,
  ),
  ChatMessage(
    text: "Hi, my name is Jack. How may I help you?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.sent,
    isSender: false,
  ),
  ChatMessage(
    text: "I have been stuck on this riddle for the past 30 mins. Can you help?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.sent,
    isSender: true,
  ),
  ChatMessage(
    text: "The riddle is: 'Seek this on Everest, get here and you'll see it too'.",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.sent,
    isSender: true,
  ),
  ChatMessage(
    text: "The answer is also a name of a park in Kelowna. Have fun!",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.sent,
    isSender: false,
  ),
  ChatMessage(
    text: "Ooh! I got the answer. Thank you!",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.sent,
    isSender: true,
  ),
];