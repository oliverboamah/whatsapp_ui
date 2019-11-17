// flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// my app imports
import 'package:whatsapp_ui/ui/components/circular_image.dart';
import 'package:whatsapp_ui/ui/holders/call_data.dart';
import 'package:whatsapp_ui/ui/holders/call_status.dart';
import 'package:whatsapp_ui/ui/holders/call_type.dart';
import 'package:whatsapp_ui/ui/values/colors.dart';

class CallItem extends StatelessWidget {
  final CallData callData;

  CallItem({@required this.callData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircularImage(
            radius: 30,
            image: this.callData.image,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      this.callData.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Transform.rotate(
                          angle: 3.127 / 4,
                          child:
                              this._getCallStatusIcon(this.callData.callStatus),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            this.callData.time,
                            style: TextStyle(color: SECONDARY_TEXT_COLOR),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Divider(),
                  )
                ],
              ),
            ),
          ),
          Container(
              height: 60, child: this._getCallTypeIcon(this.callData.callType)),
        ],
      ),
    );
  }

  Widget _getCallStatusIcon(CallStatus callStatus) {
    switch (callStatus) {
      case CallStatus.incoming:
        return Icon(
          Icons.arrow_downward,
          color: ACCENT_COLOR,
        );
      case CallStatus.outgoing:
        return Icon(Icons.arrow_upward, color: ACCENT_COLOR);
      case CallStatus.missed:
        return Icon(Icons.arrow_downward, color: Colors.red);
    }
  }

  Widget _getCallTypeIcon(CallType callType) {
    switch (callType) {
      case CallType.voice:
        return Icon(
          Icons.call,
          color: PRIMARY_COLOR,
        );
      case CallType.video:
        return Icon(
          Icons.videocam,
          color: PRIMARY_COLOR,
        );
    }
  }
}
