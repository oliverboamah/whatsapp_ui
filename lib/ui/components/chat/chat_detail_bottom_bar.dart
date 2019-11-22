// flutter imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// my app imports
import 'package:whatsapp_ui/ui/values/colors.dart';

class ChatDetailBottomBar extends StatelessWidget {
  final Function onMessageSend;
  final TextEditingController textEditingController = TextEditingController();
  ChatDetailBottomBar({@required this.onMessageSend});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2.0, right: 2.0, bottom: 2),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 4.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.face),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          maxLines: null,
                          controller: this.textEditingController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type a message'),
                        ),
                      ),
                    ),
                    Icon(Icons.attach_file),
                    Icon(Icons.photo_camera)
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(13.0),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: PRIMARY_COLOR),
            child: Icon(CupertinoIcons.mic_solid, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
