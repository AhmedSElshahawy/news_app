import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';

class NewsProvider extends ChangeNotifier {
  NewsModel? model;

  Future<void> fetchNews(String category) async {
    model = await NewsService.fetchData(category);
    notifyListeners();
  }
}
