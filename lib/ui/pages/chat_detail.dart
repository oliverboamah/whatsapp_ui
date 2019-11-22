// flutter imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_ui/ui/components/chat/chat_detail_bottom_bar.dart';

// my app imports
import 'package:whatsapp_ui/ui/holders/chat_data.dart';
import 'package:whatsapp_ui/ui/layouts/individual_chat_detail_app_bar.dart';
import 'package:whatsapp_ui/ui/values/colors.dart';

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
          Spacer(),
          ChatDetailBottomBar(
            onMessageSend: (text) => print(text),
          )
        ],
      ),
    );
  }
}
