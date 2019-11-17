// flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// my app imports
import 'package:whatsapp_ui/ui/components/chat/chat_list.dart';
import 'package:whatsapp_ui/ui/holders/chat_data.dart';
import 'package:whatsapp_ui/ui/values/colors.dart';

class ChatTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  List<ChatData> chatDataList = [
    ChatData(
        image: 'assets/images/oliver.png',
        title: 'Livbach Youth Ministry invites you all niggaz to the party',
        detail: 'Richie: Shalom!',
        messageCount: 7,
        isMuted: true,
        time: '06:45'),
    ChatData(
        image: 'assets/images/oliver.png',
        title: 'Livbach Youth Ministry',
        detail: 'Richie: Shalom!',
        messageCount: 3,
        time: '06:45'),
    ChatData(
        image: 'assets/images/oliver.png',
        title: 'Livbach Youth Ministry',
        detail: 'Richie: Shalom!',
        messageCount: 1,
        time: '06:45'),
    ChatData(
        image: 'assets/images/oliver.png',
        title: 'Livbach Youth Ministry',
        detail: 'Richie: Shalom!',
        isMuted: true,
        time: '06:45'),
    ChatData(
        image: 'assets/images/oliver.png',
        title: 'Livbach Youth Ministry',
        detail: 'Richie: Shalom!',
        time: '06:45'),
    ChatData(
        image: 'assets/images/oliver.png',
        title: 'Livbach Youth Ministry',
        detail: 'Richie: Shalom!',
        time: '06:45'),
    ChatData(
        image: 'assets/images/oliver.png',
        title: 'Livbach Youth Ministry',
        detail: 'Richie: Shalom!',
        time: '06:45'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatList(
        chatDataList: chatDataList,
        onChatClicked: (position) => print(position),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.mail),
        backgroundColor: ACCENT_COLOR,
        onPressed: () => {},
      ),
    );
  }
}
