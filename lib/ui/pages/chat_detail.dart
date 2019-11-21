// flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// my app imports
import 'package:whatsapp_ui/ui/holders/chat_data.dart';
import 'package:whatsapp_ui/ui/layouts/individual_chat_detail_app_bar.dart';

class ChatDetail extends StatefulWidget {
  final ChatData chatData;

  ChatDetail({@required this.chatData});

  @override
  State<StatefulWidget> createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        children: <Widget>[
          IndividualChatDetailAppBar(
            chatData: this.widget.chatData,
          ),
        ],
      ),
    );
  }
}
