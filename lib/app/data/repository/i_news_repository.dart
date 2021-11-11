import '../model/news_model.dart';

abstract class INewsRepository {
  Future<List<NewsModel>> findAllNews();
}
