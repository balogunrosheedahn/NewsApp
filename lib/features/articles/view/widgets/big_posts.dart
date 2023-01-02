import 'package:flutter/material.dart';
import 'package:news_app/features/articles/data/models/article_models.dart';

class BigPosts extends StatelessWidget {
  const BigPosts({Key? key, required this.article}) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        children: [
          Image.network(article.urlToImage,
          errorBuilder: (context,object, stacktrace){
            return FlutterLogo();
          }),
          Text(article.title),
          Text(article.author),
          Text(article.publishedAt),
          Text(article.description)
        ],
      ),
    );
  }
}
