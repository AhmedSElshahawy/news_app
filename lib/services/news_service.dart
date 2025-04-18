import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  static Dio dio = Dio();

  static Future<NewsModel> fetchData(String category) async {
    final response = await dio.get(
        "https://newsapi.org//v2/everything?q=$category&apiKey=1b7542c0ee15460ab9b189a0df79bc0d");

    return NewsModel.fromJson(response.data);
  }
}
