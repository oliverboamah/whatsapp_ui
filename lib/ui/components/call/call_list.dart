// flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// my app imports
import 'package:whatsapp_ui/ui/holders/call_data.dart';
import 'package:whatsapp_ui/ui/components/call/call_item.dart';

class CallList extends StatefulWidget {
  final List<CallData> callDataList;
  final Function onCallItemClicked;

  CallList({@required this.callDataList, @required this.onCallItemClicked});

  @override
  State<StatefulWidget> createState() => _CallListState();
}

class _CallListState extends State<CallList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int position) {
          return Container(
            child: InkWell(
              child: CallItem(callData: this.widget.callDataList[position]),
              onTap: () => this.widget.onCallItemClicked(position),
            ),
          );
        },
        itemCount: this.widget.callDataList.length);
  }
}
