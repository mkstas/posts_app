import 'package:dio/dio.dart';
import 'package:posts_app/models/post.model.dart';

class PostRepository {
  final Dio _dio = Dio();

  Future<List<Post>> getPosts() async {
    try {
      final response = await _dio.get(
        'https://jsonplaceholder.typicode.com/posts?_limit=10',
      );

      return response.data
          .map<Post>((json) => PostMapper.fromMap(json))
          .toList();
    } catch (e) {
      throw Exception('Failed to load posts: $e');
    }
  }
}
