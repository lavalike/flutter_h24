import 'package:flutter/material.dart';

class TabFollowPage extends StatefulWidget {
  @override
  _TabFollowPageState createState() => _TabFollowPageState();
}

class _TabFollowPageState extends State<TabFollowPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text(
          "关注",
          style: new TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
