class NewsEntity {
  String title;
  String listPics;
  String columnName;
  String columnIconUrl;
  bool isSubscribed;
  String readNumStr;
  bool isNews = false;

  NewsEntity(this.title, this.listPics, this.columnName, this.columnIconUrl,
      this.isSubscribed, this.readNumStr);
}
