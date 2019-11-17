// flutter imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// my app imports
import 'package:whatsapp_ui/ui/components/circular_image.dart';
import 'package:whatsapp_ui/ui/components/nothing.dart';
import 'package:whatsapp_ui/ui/holders/chat_data.dart';
import 'package:whatsapp_ui/ui/icons/my_flutter_app_icons.dart';
import 'package:whatsapp_ui/ui/values/colors.dart';

class ChatItem extends StatelessWidget {
  final ChatData chatData;

  ChatItem({@required this.chatData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: CircularImage(
                  image: this.chatData.image,
                  radius: 30,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text(
                          this.chatData.title,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                    Text(
                      this.chatData.detail,
                      style: TextStyle(color: SECONDARY_TEXT_COLOR),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          this.chatData.time,
                          style: TextStyle(
                              color: this.chatData.messageCount <= 0
                                  ? SECONDARY_TEXT_COLOR
                                  : ACCENT_COLOR),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 54,
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: SizedBox(
                              width: 16,
                              height: 16,
                              child: this.chatData.isMuted
                                  ? Icon(
                                      CustomMuteIcon.mute,
                                      color: SECONDARY_TEXT_COLOR,
                                      size: 16,
                                    )
                                  : null),
                        ),
                        this.chatData.messageCount > 0
                            ? Container(
                                width: 23,
                                height: 23,
                                padding: EdgeInsets.all(3),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: ACCENT_COLOR,
                                    borderRadius: BorderRadius.circular(11.5)),
                                child: Text(
                                  "${this.chatData.messageCount}",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            : Nothing()
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 76.0, top: 4.0),
            child: Divider(),
          )
        ],
      ),
    );
  }
}
