// flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// my app imports
import 'package:whatsapp_ui/ui/holders/chat_data.dart';
import 'package:whatsapp_ui/ui/pages/chat_detail.dart';

class Routes {
  BuildContext context;

  Routes({this.context});

  navigateToChatDetail(ChatData chatData) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ChatDetail(
                  chatData: chatData,
                )));
  }

  goBack() {
    Navigator.pop(context);
  }
}
