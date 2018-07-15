import 'package:flutter/material.dart';
import 'package:flutter_24h/entity/column_entity.dart';
import 'package:flutter_24h/entity/column_wrapper.dart';
import 'package:flutter_24h/util/toast_util.dart';

class ColumnItem extends StatefulWidget {
  final ColumnWrapper data;

  const ColumnItem({Key key, this.data}) : super(key: key);

  @override
  _ColumnItemState createState() => _ColumnItemState();
}

class _ColumnItemState extends State<ColumnItem> {
  List<ColumnEntity> list;

  @override
  void initState() {
    super.initState();
    list = widget.data.list;
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Padding(
          padding: new EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.only(top: 5.0),
                child: new Align(
                  alignment: Alignment.topLeft,
                  child: new Text(
                    widget.data.category,
                    style: new TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              new Container(
                margin: new EdgeInsets.only(top: 15.0),
                height: 140.0,
                child: new ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return _buildItem(index);
                    }),
              ),
            ],
          ),
        ),
        new Container(
          color: Colors.grey[200],
          height: 5.5,
        ),
      ],
    );
  }

  Widget _buildItem(int index) {
    ColumnEntity data = list[index];
    bool isLast = (index == list.length - 1);
    return new Row(
      children: <Widget>[
        new InkWell(
          onTap: () {
            ToastUtil.show("${data.columnName}");
          },
          child: new Container(
            padding: new EdgeInsets.all(10.0),
            width: 105.0,
            height: 140.0,
            decoration: new BoxDecoration(
              border: new Border.all(
                width: 0.5,
                color: Colors.grey[300],
              ),
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new Container(
                      width: 40.0,
                      height: 40.0,
                      padding: new EdgeInsets.all(1.0),
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                              image: new AssetImage(
                                  "assets/images/ic_avatar_default.png"))),
                      child: new CircleAvatar(
                        backgroundImage: new AssetImage(data.columnUrl),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 9.0),
                      child: new Text(
                        data.columnName,
                        style: new TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                _buildSubscribeButton(data),
              ],
            ),
          ),
        ),
        new SizedBox(
          width: isLast ? 0.0 : 7.0,
        )
      ],
    );
  }

  Widget _buildSubscribeButton(ColumnEntity data) {
    if (data.isSubscribed) {
      return new GestureDetector(
        onTap: () {
          ToastUtil.show("查看\"${data.columnName}\"");
        },
        child: new Container(
          padding: new EdgeInsets.only(
            left: 15.0,
            right: 15.0,
            top: 6.0,
            bottom: 6.0,
          ),
          decoration: new BoxDecoration(
            border: new Border.all(width: 0.5, color: Colors.grey[600]),
            borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
          ),
          child: new Text(
            "查看",
            style: new TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 10.0,
            ),
          ),
        ),
      );
    } else {
      return new GestureDetector(
        onTap: () {
          ToastUtil.show("订阅\"${data.columnName}\"");
        },
        child: new Container(
          padding: new EdgeInsets.only(
            left: 15.0,
            right: 15.0,
            top: 6.0,
            bottom: 6.0,
          ),
          decoration: new BoxDecoration(
            color: Colors.yellow[700],
            borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
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
      );
    }
  }
}
