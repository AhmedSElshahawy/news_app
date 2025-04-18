class NewsModel {
  List<dynamic> news;
  NewsModel(this.news);

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(json["articles"]);
  }
}
