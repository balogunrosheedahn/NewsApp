import 'package:news_app/features/articles/data/models/article_models.dart';
import 'package:news_app/services/news_api_service.dart';

class ArticleRepository{
  var apiService = NewsApiService();

  Future<List<Article>> getAllArticles() async{
    return apiService.getAllArticles();
  }
}