import 'package:flutter/material.dart';

class TabHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new TabHomePageState();
}

class TabHomePageState extends State<TabHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return _buildRow();
        },
      ),
    );
  }

  Widget _buildRow() {
    return new InkWell(
      onTap: () {
        //进入新闻详情页
      },
      child: new Column(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.all(15.0),
            child: new Column(
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new CircleAvatar(
                          backgroundImage:
                              new AssetImage("assets/images/ic_launcher.png"),
                          radius: 18.0,
                        ),
                        new Padding(
                          padding: new EdgeInsets.only(left: 10.0),
                          child: new Text(
                            "阅中国",
                            style: new TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    new GestureDetector(
                      onTap: () {
                        //点击订阅
                      },
                      child: new Container(
                        padding: new EdgeInsets.only(
                          left: 12.0,
                          right: 12.0,
                          top: 3.0,
                          bottom: 5.0,
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.yellow[700],
                          borderRadius:
                              new BorderRadius.all(new Radius.circular(15.0)),
                        ),
                        child: new Text(
                          "+订阅",
                          style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0),
                  child: new Row(
                    children: <Widget>[
                      new Image.asset(
                        "assets/images/bg.jpg",
                        width: 145.0,
                        height: 104.0,
                        fit: BoxFit.cover,
                      ),
                      new Expanded(
                        flex: 1,
                        child: new Container(
                          height: 104.0,
                          padding: new EdgeInsets.only(left: 10.0),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text(
                                "浙江60多个景区关门，另有多趟航班取消！省旅游局提醒，台风天谨慎...",
                                style: new TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Text(
                                    "1.1万人阅读",
                                    style: new TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  new Image.asset(
                                    "assets/images/ic_more_btn.png",
                                    width: 15.0,
                                    height: 15.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          new Container(
            color: Colors.grey[200],
            height: 5.5,
          ),
        ],
      ),
    );
  }
}
