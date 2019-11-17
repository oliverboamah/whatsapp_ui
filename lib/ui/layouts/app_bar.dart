// flutter imports
import 'package:flutter/material.dart';

// my app imports
import 'package:whatsapp_ui/env.dart';

class HomePageAppBar extends AppBar {
  final TabController tabController;
  final Function onTab;
  HomePageAppBar({@required this.tabController, @required this.onTab})
      : super(
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
                Tab(
                  text: 'CHATS',
                ),
                Tab(text: 'STATUS'),
                Tab(
                  text: 'CALLS',
                ),
              ],
              onTap: (index) => onTab(index),
              controller: tabController,
            ));
}
