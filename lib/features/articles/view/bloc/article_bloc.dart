import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/articles/view/bloc/article_events.dart';
import 'package:news_app/features/articles/view/bloc/article_state.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState>{
  ArticleBloc(): super(ArticleState()){
    on<LoadArticle>(_fetchArticles);
  }
  Future <void> _fetchArticles(LoadArticle loadArticle, Emitter emitt)async{
    var listOfArticles = await state.getArticles();
    var newState = ArticleState(listOfArticles: listOfArticles);

    emit(newState);
  }

}