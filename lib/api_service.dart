import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'article.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('/articles')
  Future<List<Article>> getArticles();
}
