import 'package:equatable/equatable.dart';

import '../../data/models/article_models.dart';

abstract class ArticleEvent {}
class LoadArticle extends ArticleEvent
{
}