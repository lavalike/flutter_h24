import 'package:flutter/material.dart';

class ADItem extends StatefulWidget {
  @override
  _ADItemState createState() => _ADItemState();
}

class _ADItemState extends State<ADItem> {
  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {},
      child: new Column(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.all(15.0),
            child: new Column(
              children: <Widget>[
                new Text(
                  "南京城东郊的钟山风景区内，景点非常密集，除了明孝陵、中山路和灵谷寺这三大景区以外，大概就数美龄宫最吸引人了。美龄宫其...",
                  style: new TextStyle(
                    fontSize: 15.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0),
                  child: new Stack(
                    children: <Widget>[
                      new Image.asset(
                        "assets/images/bg1.jpeg",
                        width: 330.0,
                        height: 193.0,
                        fit: BoxFit.cover,
                      ),
                      new Positioned(
                        left: 10.0,
                        bottom: 10.0,
                        child: new Container(
                          padding: new EdgeInsets.only(
                              left: 12.0, right: 14.0, top: 0.5, bottom: 1.0),
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              image: new AssetImage(
                                  "assets/images/ic_days_tag_bg.png"),
                            ),
                          ),
                          child: new Text(
                            "广告",
                            style: new TextStyle(fontSize: 12.0),
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
