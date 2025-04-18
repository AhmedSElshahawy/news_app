import 'package:flutter/material.dart';
import 'package:news_app/screens/news_detail.dart';

class NewsItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String content;
  final String publishedAt; // Added publishedAt
  final String author;

  const NewsItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.content,
    required this.publishedAt,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetailPage(
              title: title,
              description: description,
              content: content,
              publishedAt: publishedAt,
              author: author,
            ),
          )),
      child: Card(
        elevation: 2.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
              image,
              width: 400,
              height: 200,
            ),
            Text(title),
            Text(description),
          ],
        ),
      ),
    );
  }
}
