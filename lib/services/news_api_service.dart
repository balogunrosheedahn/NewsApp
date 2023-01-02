import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/features/articles/data/models/article_models.dart';


class NewsApiService{

  final _baseUrl = "https://newsapi.org/v2/";
  final _apiKey ="b7357a345d8849199087db7e3a5e2e91";

  Future<List<Article>> getAllArticles() async{
    var endPoint ="top-headlines?country=ng&apiKey=$_apiKey";
    var fullUrl = _baseUrl+endPoint;

    var listToBeReturned= <Article>[];
    //Make network request
    http.Response response = await http.get(Uri.parse(fullUrl));

    //jsonDecode Converts responseBody which comes as a string into a map
    Map<String,dynamic> responseBody =jsonDecode(response.body);

    //filter through the map and get articles list
    List<Map<String, dynamic>> listOfArticles = responseBody["articles"];

    //loop through the list and convert the map to article object
    for (Map<String, dynamic> articleItems in listOfArticles){
      var article = Article.fromJson(articleItems);
      listToBeReturned.add(article);
    }
      return listToBeReturned;

  }
}