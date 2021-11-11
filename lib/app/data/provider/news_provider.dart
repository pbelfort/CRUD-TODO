import '../model/news_model.dart';
import '../repository/i_news_repository.dart';

class NewsProvider implements INewsRepository {
  // final RestClient restClient;

  // NewsProvider(this.restClient);

  @override
  Future<List<NewsModel>> findAllNews() async {
    final List<dynamic> data = ["response.body"];
    return data.map<NewsModel>((resp) => NewsModel.fromMap(resp)).toList();
  }
}
