import 'package:dart_mappable/dart_mappable.dart';

part 'post.model.mapper.dart';

@MappableClass()
class Post with PostMappable {
  @MappableField(key: 'id')
  final num id;

  @MappableField(key: 'userId')
  final num userId;

  @MappableField(key: 'title')
  final String title;

  @MappableField(key: 'body')
  final String body;

  Post({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });
}
