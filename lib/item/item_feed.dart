import 'package:flutter/material.dart';
import 'package:flutter_24h/components/menu_button.dart';
import 'package:flutter_24h/entity/article_entity.dart';
import 'package:flutter_24h/util/toast_util.dart';

class FeedItem extends StatefulWidget {
  final NewsEntity data;

  const FeedItem({Key key, this.data}) : super(key: key);

  @override
  _FeedItemState createState() => _FeedItemState();
}

class _FeedItemState extends State<FeedItem> {
  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {
        ToastUtil.show("进入详情页");
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
                              new AssetImage(widget.data.columnIconUrl),
                          radius: 18.0,
                        ),
                        new Padding(
                          padding: new EdgeInsets.only(left: 10.0),
                          child: new Text(
                            widget.data.columnName,
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
                        ToastUtil.show("订阅");
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
                  child: new Text(
                    widget.data.title,
                    style: new TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0),
                  child: new Stack(
                    children: <Widget>[
                      new Align(
                        alignment: Alignment.topLeft,
                        child: new Image.asset(
                          widget.data.listPics,
                          width: 188.0,
                          height: 135.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(top: 15.0),
                  color: Colors.grey[200],
                  height: 0.5,
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new MenuButton(
                            articleId: 1,
                            iconUrl: "assets/images/ic_like_btn.png",
                            title: "喜欢",
                          ),
                          new Padding(
                            padding: new EdgeInsets.only(left: 20.0),
                            child: new MenuButton(
                              articleId: 1,
                              iconUrl: "assets/images/ic_comment_btn.png",
                              title: "评论",
                            ),
                          ),
                          new Padding(
                            padding: new EdgeInsets.only(left: 20.0),
                            child: new MenuButton(
                              articleId: 1,
                              iconUrl: "assets/images/ic_forward_btn.png",
                              title: "转发",
                            ),
                          ),
                        ],
                      ),
                      new Row(
                        children: <Widget>[
                          new Text(
                            "${widget.data.readNumStr}阅读",
                            style: new TextStyle(
                              fontSize: 10.0,
                              color: Colors.grey,
                            ),
                          ),
                          new Padding(
                            padding: new EdgeInsets.only(left: 20.0),
                            child: new Image.asset(
                              "assets/images/ic_more_btn.png",
                              width: 15.0,
                              height: 15.0,
                            ),
                          ),
                        ],
                      )
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
