// flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UpdatesHeader extends StatelessWidget {
  final String title = 'Recent Updates';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 8.0),
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Text(title),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          border: Border(top: BorderSide(width: 0.5, color: Colors.grey))),
    );
  }
}
