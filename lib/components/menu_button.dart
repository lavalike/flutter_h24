import 'package:flutter/material.dart';
import 'package:flutter_24h/util/toast_util.dart';

///
/// 菜单按钮
///
class MenuButton extends StatefulWidget {
  final int articleId;
  final String iconUrl;
  final String title;

  const MenuButton({Key key, this.articleId, this.iconUrl, this.title})
      : super(key: key);

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        ToastUtil.show("你点击了${widget.title}");
      },
      child: new Row(
        children: <Widget>[
          new Image.asset(
            widget.iconUrl,
            width: 17.0,
            height: 17.0,
          ),
          new Padding(
            padding: new EdgeInsets.only(left: 8.0),
            child: new Text(
              widget.title,
              style: new TextStyle(
                fontSize: 12.0,
                color: Colors.grey[500],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
