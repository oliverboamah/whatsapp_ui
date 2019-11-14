import 'package:flutter/widgets.dart';
import 'package:whatsapp_ui/ui/components/chat_list.dart';
import 'package:whatsapp_ui/ui/holders/chat_data.dart';

class ChatTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  List<ChatData> chatDataList = [
    ChatData(
        image: 'oliver.png',
        title: 'Livbach Youth Ministry',
        detail: 'Richie: Shalom!'),
    ChatData(
        image: 'oliver.png',
        title: 'Livbach Youth Ministry',
        detail: 'Richie: Shalom!'),
    ChatData(
        image: 'oliver.png',
        title: 'Livbach Youth Ministry',
        detail: 'Richie: Shalom!'),
    ChatData(
        image: 'oliver.png',
        title: 'Livbach Youth Ministry',
        detail: 'Richie: Shalom!'),
    ChatData(
        image: 'oliver.png',
        title: 'Livbach Youth Ministry',
        detail: 'Richie: Shalom!'),
    ChatData(
        image: 'oliver.png',
        title: 'Livbach Youth Ministry',
        detail: 'Richie: Shalom!'),
    ChatData(
        image: 'oliver.png',
        title: 'Livbach Youth Ministry',
        detail: 'Richie: Shalom!'),
  ];

  @override
  Widget build(BuildContext context) {
    return ChatList(
      chatDataList: chatDataList,
      onChatClicked: (position) => print(position),
    );
  }
}
