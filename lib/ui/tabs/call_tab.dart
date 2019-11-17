// flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// my app imports
import 'package:whatsapp_ui/ui/components/call/call_list.dart';
import 'package:whatsapp_ui/ui/holders/call_data.dart';
import 'package:whatsapp_ui/ui/holders/call_status.dart';
import 'package:whatsapp_ui/ui/holders/call_type.dart';
import 'package:whatsapp_ui/ui/values/colors.dart';

class CallTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CallTabState();
}

class _CallTabState extends State<CallTab> {
  // status data list
  List<CallData> CallDataList = [
    CallData(
        image: 'assets/images/oliver.png',
        name: 'Teddy Baker',
        time: 'Just Now',
        callStatus: CallStatus.missed,
        callType: CallType.voice),
    CallData(
        image: 'assets/images/oliver.png',
        name: 'Brocke',
        time: '26 minutes ago',
        callStatus: CallStatus.missed,
        callType: CallType.voice),
    CallData(
        image: 'assets/images/oliver.png',
        name: 'Sparrow',
        time: '40 minutes ago',
        callStatus: CallStatus.incoming,
        callType: CallType.voice),
    CallData(
        image: 'assets/images/oliver.png',
        name: 'Jefferson',
        time: 'Today, 09:45',
        callStatus: CallStatus.missed,
        callType: CallType.video),
    CallData(
        image: 'assets/images/oliver.png',
        name: 'Nii Aryi',
        time: 'Today, 09:26',
        callStatus: CallStatus.outgoing,
        callType: CallType.voice),
    CallData(
        image: 'assets/images/oliver.png',
        name: '020 120 3034',
        time: 'Today, 08:59',
        callStatus: CallStatus.missed,
        callType: CallType.voice),
    CallData(
        image: 'assets/images/oliver.png',
        name: 'Paul',
        time: 'Today, 08:51',
        callStatus: CallStatus.missed,
        callType: CallType.voice),
    CallData(
        image: 'assets/images/oliver.png',
        name: 'Josh Martial',
        time: 'Today, 08:32',
        callStatus: CallStatus.missed,
        callType: CallType.voice),
    CallData(
        image: 'assets/images/oliver.png',
        name: 'Taffah',
        time: 'Today, 08:18',
        callStatus: CallStatus.missed,
        callType: CallType.voice),
    CallData(
        image: 'assets/images/oliver.png',
        name: 'Sly',
        time: 'Today, 08:11',
        callStatus: CallStatus.missed,
        callType: CallType.voice),
    CallData(
        image: 'assets/images/oliver.png',
        name: 'Amful',
        time: 'Today, 08:07',
        callStatus: CallStatus.missed,
        callType: CallType.voice),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CallList(
          callDataList: this.CallDataList,
          onCallItemClicked: (position) => {},
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_call),
          onPressed: () => {},
          backgroundColor: ACCENT_COLOR,
        ));
  }
}
