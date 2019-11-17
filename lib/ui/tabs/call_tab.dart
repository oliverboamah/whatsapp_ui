// flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_ui/ui/values/colors.dart';

class CallTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CallTabState();
}

class _CallTabState extends State<CallTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text('Call Tab')),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_call),
          onPressed: () => {},
          backgroundColor: ACCENT_COLOR,
        ));
  }
}
