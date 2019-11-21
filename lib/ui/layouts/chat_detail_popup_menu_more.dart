// flutter imports
import 'package:flutter/material.dart';

// my app imports
import 'package:whatsapp_ui/ui/holders/chat_detail_popup_menu_more_chioces.dart';

class ChatDetailPopupMenuMore extends StatelessWidget {
  final Function onReportSelected;
  final Function onBlockSelected;
  final Function onClearChatSelected;
  final Function onExportChatSelected;
  final Function onAddShortcutSelected;

  ChatDetailPopupMenuMore({
    this.onReportSelected,
    this.onBlockSelected,
    this.onClearChatSelected,
    this.onExportChatSelected,
    this.onAddShortcutSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PopupMenuButton<ChatDetailPopupMenuMoreChoices>(
        icon: Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
        onSelected: (result) => this.onMenuItemSelected(result),
        itemBuilder: (BuildContext context) =>
            <PopupMenuEntry<ChatDetailPopupMenuMoreChoices>>[
          const PopupMenuItem<ChatDetailPopupMenuMoreChoices>(
            value: ChatDetailPopupMenuMoreChoices.report,
            child: Text('Report'),
          ),
          const PopupMenuItem<ChatDetailPopupMenuMoreChoices>(
            value: ChatDetailPopupMenuMoreChoices.block,
            child: Text('Block'),
          ),
          const PopupMenuItem<ChatDetailPopupMenuMoreChoices>(
            value: ChatDetailPopupMenuMoreChoices.clearChat,
            child: Text('Clear chat'),
          ),
          const PopupMenuItem<ChatDetailPopupMenuMoreChoices>(
            value: ChatDetailPopupMenuMoreChoices.exportChat,
            child: Text('Export chat'),
          ),
          const PopupMenuItem<ChatDetailPopupMenuMoreChoices>(
            value: ChatDetailPopupMenuMoreChoices.addShortcut,
            child: Text('Add shortcut'),
          ),
        ],
      ),
    );
  }

  onMenuItemSelected(ChatDetailPopupMenuMoreChoices result) {
    switch (result) {
      case ChatDetailPopupMenuMoreChoices.report:
        this.onReportSelected();
        break;
      case ChatDetailPopupMenuMoreChoices.block:
        this.onBlockSelected();
        break;
      case ChatDetailPopupMenuMoreChoices.clearChat:
        this.onClearChatSelected();
        break;
      case ChatDetailPopupMenuMoreChoices.exportChat:
        this.onExportChatSelected();
        break;
      case ChatDetailPopupMenuMoreChoices.addShortcut:
        this.onAddShortcutSelected();
        break;
    }
  }
}
