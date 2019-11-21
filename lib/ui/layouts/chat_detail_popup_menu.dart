// flutter imports
import 'package:flutter/material.dart';

// my app imports
import 'package:whatsapp_ui/ui/holders/chat_detail_popup_menu_choices.dart';

class ChatDetailPopupMenu extends StatelessWidget {
  final Function onContactSelected;
  final Function onMediaSelected;
  final Function onSearchSelected;
  final Function onMuteNotificationsSelected;
  final Function onWallpaperSelected;
  final Function onMoreSelected;

  ChatDetailPopupMenu(
      {this.onContactSelected,
      this.onMediaSelected,
      this.onSearchSelected,
      this.onMuteNotificationsSelected,
      this.onWallpaperSelected,
      this.onMoreSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PopupMenuButton<ChatDetailPopupMenuChoices>(
        icon: Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
        onSelected: (result) => this.onMenuItemSelected(result),
        itemBuilder: (BuildContext context) =>
            <PopupMenuEntry<ChatDetailPopupMenuChoices>>[
          const PopupMenuItem<ChatDetailPopupMenuChoices>(
            value: ChatDetailPopupMenuChoices.viewContact,
            child: Text('View contact'),
          ),
          const PopupMenuItem<ChatDetailPopupMenuChoices>(
            value: ChatDetailPopupMenuChoices.media,
            child: Text('Media'),
          ),
          const PopupMenuItem<ChatDetailPopupMenuChoices>(
            value: ChatDetailPopupMenuChoices.search,
            child: Text('Search'),
          ),
          const PopupMenuItem<ChatDetailPopupMenuChoices>(
            value: ChatDetailPopupMenuChoices.muteNotifications,
            child: Text('Mute notifications'),
          ),
          const PopupMenuItem<ChatDetailPopupMenuChoices>(
            value: ChatDetailPopupMenuChoices.wallpaper,
            child: Text('Wallpaper'),
          ),
          const PopupMenuItem<ChatDetailPopupMenuChoices>(
            value: ChatDetailPopupMenuChoices.more,
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
              title: Text('More'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
        ],
      ),
    );
  }

  onMenuItemSelected(ChatDetailPopupMenuChoices result) {
    switch (result) {
      case ChatDetailPopupMenuChoices.viewContact:
        this.onContactSelected();
        break;
      case ChatDetailPopupMenuChoices.media:
        this.onMediaSelected();
        break;
      case ChatDetailPopupMenuChoices.search:
        this.onSearchSelected();
        break;
      case ChatDetailPopupMenuChoices.muteNotifications:
        this.onMuteNotificationsSelected();
        break;
      case ChatDetailPopupMenuChoices.wallpaper:
        this.onWallpaperSelected();
        break;
      case ChatDetailPopupMenuChoices.more:
        this.onMoreSelected();
        break;
    }
  }
}
