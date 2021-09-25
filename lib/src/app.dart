import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:friendly_chat/src/chat/chat_screen.dart';

class FriendlyChatApp extends StatelessWidget {
  final ThemeData kIOSTheme = ThemeData(
    primarySwatch: Colors.orange,
    primaryColor: Colors.grey[100],
    primaryColorBrightness: Brightness.light
  );
  final ThemeData kDefaultTheme = ThemeData(
    primarySwatch: Colors.purple,
    accentColor: Colors.orangeAccent[400]
  );

  FriendlyChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Friendly Chat",
      theme: defaultTargetPlatform == TargetPlatform.iOS
        ? kIOSTheme
        : kDefaultTheme,
      home: const ChatScreen()
    );
  }
}
