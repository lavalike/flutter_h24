import 'package:flutter/material.dart';
import 'package:flutter_24h/entity/ad_entity.dart';
import 'package:flutter_24h/entity/article_entity.dart';
import 'package:flutter_24h/entity/column_entity.dart';
import 'package:flutter_24h/entity/column_wrapper.dart';
import 'package:flutter_24h/item/item_ad.dart';
import 'package:flutter_24h/item/item_article_news.dart';
import 'package:flutter_24h/item/item_column.dart';
import 'package:flutter_24h/item/item_feed.dart';

class TabHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new TabHomePageState();
}

class TabHomePageState extends State<TabHomePage> {
  List<dynamic> list;
  List<ColumnEntity> columnList;

  @override
  void initState() {
    super.initState();

    list = new List();
    columnList = new List();

    NewsEntity entity;
    for (int i = 0; i < 20; i++) {
      entity = new NewsEntity(
        "婚纱照一辈子就一次，就应该多看看，选择适合自己的，也不能太大众化的，我的婚纱照就是在南城的星缘视觉拍的，蛮不错。婚纱照一辈子就一次，就应该多看看，选择适合自己的，也不能太大众化的，我的婚纱照就是在南城的星缘视觉拍的，蛮不错",
        "assets/images/bg.jpg",
        "阅中国",
        "assets/images/ic_avatar_default.png",
        true,
        "1089",
      );
      if (i % 3 == 0) entity.isNews = true;
      list.add(entity);
    }

    /**
     * 栏目推荐
     */
    columnList
        .add(new ColumnEntity("assets/images/ic_avatar1.jpeg", "好摄之友", false));
    columnList.add(
        new ColumnEntity("assets/images/ic_avatar2.jpeg", "北戴河碱业工人读书会", true));
    columnList
        .add(new ColumnEntity("assets/images/ic_avatar3.jpeg", "好摄之友", false));
    columnList.add(new ColumnEntity(
        "assets/images/ic_avatar_default.png", "北戴河碱业工人读书会", true));
    columnList.add(
        new ColumnEntity("assets/images/ic_avatar_default.png", "好摄之友", false));
    columnList.add(
        new ColumnEntity("assets/images/ic_avatar1.jpeg", "北戴河碱业工人读书会", true));

    list.insert(4, new ColumnWrapper("猜你喜欢", columnList));
    list.insert(9, new ColumnWrapper("精选推荐", columnList));

    list.insert(
        2,
        new AdEntity(
          "南京城东郊的钟山风景区内，景点非常密集，除了明孝陵、中山路和灵谷寺这三大景区以外，大概就数美龄宫最吸引人了。南京城东郊的钟山风景区内，景点非常密集，除了明孝陵、中山路和灵谷寺这三大景区以外，大概就数美龄宫最吸引人了。",
          "assets/images/bg1.jpeg",
        ));
    list.insert(
        6,
        new AdEntity(
          "南京城东郊的钟山风景区内，景点非常密集，除了明孝陵、中山路和灵谷寺这三大景区以外，大概就数美龄宫最吸引人了。南京城东郊的钟山风景区内，景点非常密集，除了明孝陵、中山路和灵谷寺这三大景区以外，大概就数美龄宫最吸引人了。",
          "assets/images/bg1.jpeg",
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          dynamic data = list[index];
          if (data is NewsEntity) {
            if (data.isNews) {
              return new NewsItem(data: data);
            } else {
              return new FeedItem(data: data);
            }
          }
          if (data is AdEntity) {
            return new ADItem(data: data);
          }
          if (data is ColumnWrapper) {
            return new ColumnItem(data: data);
          }
        },
      ),
    );
  }
}
