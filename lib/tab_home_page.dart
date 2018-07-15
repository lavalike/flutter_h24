import 'package:flutter/material.dart';
import 'package:flutter_24h/item/item_ad.dart';
import 'package:flutter_24h/item/item_article_news.dart';

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
          if (index % 2 == 0) {
            return new ArticleNewsItem();
          } else {
            return new ADItem();
          }
        },
      ),
    );
  }
}
