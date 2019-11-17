// flutter imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_ui/ui/values/colors.dart';

class StatusTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StatusTabState();
}

class _StatusTabState extends State<StatusTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
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
