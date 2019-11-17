// flutter imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// my app imports
import 'package:whatsapp_ui/ui/components/status/add_status.dart';
import 'package:whatsapp_ui/ui/components/status/status_list.dart';
import 'package:whatsapp_ui/ui/components/status/updates_header.dart';
import 'package:whatsapp_ui/ui/holders/status_data.dart';
import 'package:whatsapp_ui/ui/values/colors.dart';

class StatusTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StatusTabState();
}

class _StatusTabState extends State<StatusTab> {
  // status data list
  List<StatusData> statusDataList = [
    StatusData(image: 'assets/images/oliver.png', title: 'Teddy Baker', time: 'Just Now'),
    StatusData(
        image: 'assets/images/oliver.png', title: 'Brocke', time: '26 minutes ago'),
    StatusData(
        image: 'assets/images/oliver.png', title: 'Sparrow', time: '40 minutes ago'),
    StatusData(
        image: 'assets/images/oliver.png', title: 'Jefferson', time: 'Today, 09:45'),
    StatusData(
        image: 'assets/images/oliver.png', title: 'Nii Aryi', time: 'Today, 09:26'),
    StatusData(
        image: 'assets/images/oliver.png', title: '020 120 3034', time: 'Today, 08:59'),
    StatusData(
        image: 'assets/images/oliver.png', title: 'Paul', time: 'Today, 08:51'),
    StatusData(
        image: 'assets/images/oliver.png', title: 'Josh Martial', time: 'Today, 08:32'),
    StatusData(
        image: 'assets/images/oliver.png', title: 'Taffah', time: 'Today, 08:18'),
    StatusData(
        image: 'assets/images/oliver.png', title: 'Sly', time: 'Today, 08:11'),
    StatusData(
        image: 'assets/images/oliver.png', title: 'Amful', time: 'Today, 08:07'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AddStatus(),
          UpdatesHeader(),
          Expanded(
            child: StatusList(
              statusDataList: this.statusDataList,
              onStatusItemClicked: (positon) => {},
            ),
          )
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: FloatingActionButton(
              child: Icon(
                Icons.edit,
                color: PRIMARY_COLOR,
              ),
              mini: true,
              backgroundColor: Colors.grey.shade200,
              onPressed: () => {},
            ),
          ),
          FloatingActionButton(
            child: Icon(CupertinoIcons.photo_camera_solid),
            onPressed: () => {},
            backgroundColor: ACCENT_COLOR,
          )
        ],
      ),
    );
  }
}
