import 'package:flutter/material.dart';
import 'package:whatsapp_ui/ui/layouts/app_bar.dart';
import 'package:whatsapp_ui/ui/tabs/chat_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // selected tab index
  int _selectedTabIndex = 0;

  // tabs
  List<Widget> _tabs = [ChatTab()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: HomePageAppBar().getAppBar(context),
        body: this._tabs[this._selectedTabIndex],
      ),
    );
  }
}
