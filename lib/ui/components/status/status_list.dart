// flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_ui/ui/components/status/status_item.dart';

// my app imports
import 'package:whatsapp_ui/ui/holders/status_data.dart';

class StatusList extends StatefulWidget {
  final List<StatusData> statusDataList;
  final Function onStatusItemClicked;

  StatusList(
      {@required this.statusDataList, @required this.onStatusItemClicked});

  @override
  State<StatefulWidget> createState() => _StatusListState();
}

class _StatusListState extends State<StatusList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int position) {
        return InkWell(
          child: StatusItem(statusData: this.widget.statusDataList[position]),
          onTap: () => {},
        );
      },
      itemCount: this.widget.statusDataList.length,
    );
  }
}
