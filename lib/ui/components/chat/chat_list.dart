// flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// my app imports
import 'package:whatsapp_ui/ui/components/chat/chat_item.dart';
import 'package:whatsapp_ui/ui/holders/chat_data.dart';

class ChatList extends StatefulWidget {
  final List<ChatData> chatDataList;
  final Function onChatClicked;

  ChatList({this.chatDataList, this.onChatClicked});

  @override
  State<StatefulWidget> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int position) {
          return Container(
            child: InkWell(
              child: ChatItem(chatData: this.widget.chatDataList[position]),
              onTap: this.widget.onChatClicked(position),
            ),
          );
        },
        itemCount: this.widget.chatDataList.length);
  }
}
