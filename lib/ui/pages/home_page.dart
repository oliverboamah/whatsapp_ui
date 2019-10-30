import 'package:flutter/material.dart';
import 'package:whatsapp_ui/ui/layouts/app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: HomePageAppBar().getAppBar(context),
        body: Center(
          child: Text('Center'),
        ),
      ),
    );
  }
}
