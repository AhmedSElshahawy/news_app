import 'package:flutter/material.dart';
import 'package:news_app/providers/news_provider.dart';
import 'package:news_app/widgets/news_item.dart';
import 'package:provider/provider.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text(
          "News App",
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
      ),
      body: Consumer<NewsProvider>(
        builder:
            (BuildContext context, NewsProvider providerObject, Widget? child) {
          final data = providerObject.model?.news;
          if (data == null) {
            providerObject.fetchNews("sports");
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => NewsItem(
                    image: data[index]["urlToImage"] ?? "",
                    title: data[index]["title"] ?? "",
                    description: data[index]["description"] ?? "",
                    content: data[index]["content"] ?? "",
                    publishedAt: data[index]["publishedAt"] ?? "",
                    author: data[index]["author"] ?? "",
                  ));
        },
      ),
    );
  }
}
