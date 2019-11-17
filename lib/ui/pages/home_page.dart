// flutter imports
import 'package:flutter/material.dart';

// my app imports
import 'package:whatsapp_ui/ui/layouts/app_bar.dart';
import 'package:whatsapp_ui/ui/tabs/camera_tab.dart';
import 'package:whatsapp_ui/ui/tabs/chat_tab.dart';
import 'package:whatsapp_ui/ui/tabs/status_tab.dart';
import 'package:whatsapp_ui/ui/tabs/call_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // tabs
  List<Widget> _tabs = [CameraTab(), ChatTab(), StatusTab(), CallTab()];

  // page controller
  final _pageController = PageController(initialPage: 0);

  // tab controller
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    this._tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: HomePageAppBar(
          tabController: this._tabController,
          onTab: (index) {
            this.setState(() {
              this._pageController.jumpToPage(index);
            });
          },
        ),
        body: PageView(
          controller: this._pageController,
          children: this._tabs,
          onPageChanged: (index) => this._tabController.animateTo(index),
        ),
      ),
      initialIndex: 0,
    );
  }
}
