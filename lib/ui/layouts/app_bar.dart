import 'package:flutter/material.dart';
import 'package:whatsapp_ui/env.dart';

class HomePageAppBar {
  AppBar getAppBar(BuildContext context) {
    return AppBar(
        title: Text(APP_NAME),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          ),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () => {})
        ],
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: 'CHATS',),
            Tab(text: 'STATUS'),
            Tab(text: 'CALLS',),
          ],
        ));
  }
}
