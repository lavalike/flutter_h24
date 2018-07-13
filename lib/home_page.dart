import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return new Material(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Expanded(
            flex: 1,
            child: new Container(
              color: Colors.green,
              child: new Center(
                child: new Text("I am content"),
              ),
            ),
          ),
          new Container(
            height: 50.0,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
