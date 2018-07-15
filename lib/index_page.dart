import 'package:flutter/material.dart';
import 'package:flutter_24h/entity/tab_entity.dart';
import 'package:flutter_24h/tab_activity_page.dart';
import 'package:flutter_24h/tab_find_page.dart';
import 'package:flutter_24h/tab_follow_page.dart';
import 'package:flutter_24h/tab_home_page.dart';
import 'package:flutter_24h/tab_video_page.dart';

class IndexPage extends StatefulWidget {
  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage>
    with SingleTickerProviderStateMixin {
  final iconSize = 20.0;
  final _tabTitleStyle = new TextStyle(
    fontSize: 10.0,
    color: Colors.black,
  );
  int _currentIndex = 0;
  TabController _tabController;
  List<TabEntity> tabs = new List<TabEntity>();

  @override
  void initState() {
    super.initState();
    tabs.add(new TabEntity(0, "首页", "assets/images/ic_home.png",
        "assets/images/ic_home_click.png"));
    tabs.add(new TabEntity(1, "关注", "assets/images/ic_follow.png",
        "assets/images/ic_follow_click.png"));
    tabs.add(new TabEntity(2, "活动", "assets/images/ic_activity.png",
        "assets/images/ic_activity_click.png"));
    tabs.add(new TabEntity(3, "视频", "assets/images/ic_video.png",
        "assets/images/ic_video_click.png"));
    tabs.add(new TabEntity(4, "发现", "assets/images/ic_find.png",
        "assets/images/ic_find_click.png"));

    _tabController = new TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        titleSpacing: 0.0,
        title: new SizedBox(
          height: 54.0,
          child: new Row(
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.all(5.0),
                child: new Image.asset(
                  "assets/images/ic_ice_anim.gif",
                  repeat: ImageRepeat.repeat,
                ),
              ),
              new Expanded(
                flex: 1,
                child: new Container(
                  height: 40.0,
                  decoration: new BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(100.0)),
                  ),
                  child: new Row(
                    children: <Widget>[
                      new Padding(
                        padding: new EdgeInsets.only(left: 8.5),
                        child: new Image.asset(
                          "assets/images/ic_search.png",
                          width: 14.0,
                          height: 14.0,
                        ),
                      ),
                      new Padding(
                        padding: new EdgeInsets.only(left: 9.0),
                        child: new Text(
                          "搜索感兴趣的文章、栏目",
                          style: new TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(left: 16.0, right: 18.5),
                child: new Image.asset(
                  "assets/images/ic_me_btn.png",
                  width: 32.0,
                  height: 32.0,
                ),
              ),
            ],
          ),
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: [
          new TabHomePage(),
          new TabFollowPage(),
          new TabActivityPage(),
          new TabVideoPage(),
          new TabFindPage(),
        ],
      ),
      bottomNavigationBar: _buildBottomTabs(),
    );
  }

  Widget _buildBottomTabs() {
    return new Container(
      decoration: new BoxDecoration(
        border: new Border(
          top: new BorderSide(
            width: 0.5,
            color: Colors.grey[200],
          ),
        ),
      ),
      height: 50.0,
      child: new TabBar(
        controller: _tabController,
        tabs: tabs.map((entity) {
          return _buildTab(entity.index, entity.title, entity.iconNormal,
              entity.iconSelected);
        }).toList(),
        indicator: new BoxDecoration(),
      ),
    );
  }

  Widget _buildTab(
      int index, String title, String iconNormal, String iconSelected) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Image.asset(
//          _currentIndex == index ? iconSelected : iconNormal,
          iconNormal,
          width: iconSize,
          height: iconSize,
        ),
        new Text(
          title,
          style: _tabTitleStyle,
        ),
      ],
    );
  }
}
