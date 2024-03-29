// fllutter imports
import 'package:flutter/material.dart';

// my app imports
import 'package:whatsapp_ui/ui/components/circular_image.dart';
import 'package:whatsapp_ui/ui/holders/chat_data.dart';
import 'package:whatsapp_ui/ui/layouts/chat_detail_popup_menu.dart';
import 'package:whatsapp_ui/ui/routes/routes.dart';
import 'package:whatsapp_ui/ui/values/colors.dart';

class IndividualChatDetailAppBar extends StatelessWidget {
  final ChatData chatData;
  final Function onCallIconClicked;
  final Function onVideoIconClicked;

  IndividualChatDetailAppBar(
      {@required this.chatData,
      this.onCallIconClicked,
      this.onVideoIconClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DARK_PRIMARY_COLOR,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Container(
        padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
        color: PRIMARY_COLOR,
        child: Column(children: <Widget>[
          Row(
            children: <Widget>[
              InkWell(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onTap: () => Routes(context: context).goBack(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2.0, right: 8.0),
                child: CircularImage(
                  image: this.chatData.image,
                  radius: 20,
                ),
              ),
              Text(
                this.chatData.title,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: InkWell(
                  child: Icon(
                    Icons.videocam,
                    color: Colors.white,
                  ),
                  onTap: () => this.onVideoIconClicked(),
                ),
              ),
              InkWell(
                child: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
                onTap: () => this.onCallIconClicked(),
              ),
              ChatDetailPopupMenu()
            ],
          ),
        ]),
      ),
    );
  }
}
