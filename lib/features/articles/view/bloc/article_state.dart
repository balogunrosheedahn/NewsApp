import 'package:equatable/equatable.dart';
import 'package:news_app/features/articles/data/repository/article_repository.dart';

import '../../data/models/article_models.dart';

class ArticleState {
  List<Article> listOfArticles;
  ArticleState({this.listOfArticles: const[]});
  Future<List<Article>> getArticles() async{
    var repo = ArticleRepository();

    return await repo.getAllArticles();
  }
}