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
    return ChatList(
      chatDataList: chatDataList,
      onChatClicked: (position) => print(position),
    );
  }
}
