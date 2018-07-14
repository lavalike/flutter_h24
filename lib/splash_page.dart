import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_24h/index_page.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          buildSkipButton(),
          buildSlogan(),
        ],
      ),
    );
  }

  Widget buildSkipButton() {
    return new Positioned(
      child: new GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(new MaterialPageRoute(
                builder: (BuildContext context) => new IndexPage(),
              ));
        },
        child: new CircleAvatar(
          backgroundColor: Colors.black54,
          child: new Text(
            "跳过",
            style: new TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ),
      ),
      right: 20.0,
      top: 20.0,
    );
  }

  Widget buildSlogan() {
    return new Positioned(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.only(right: 10.0),
                child: new Image.asset(
                  "assets/images/ic_launcher.png",
                  width: 45.0,
                  height: 45.0,
                ),
              ),
              new Column(
                children: <Widget>[
                  new Text(
                    "浙江24小时",
                    style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  new Text(
                    "大新闻|小日子",
                    style: new TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ],
          ),
          new Container(
            margin: new EdgeInsets.only(
              top: 20.0,
              bottom: 20.0,
            ),
            child: new Text(
              "钱江晚报新闻资讯客户端",
              style: new TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ],
      ),
      bottom: 0.0,
    );
  }
}
