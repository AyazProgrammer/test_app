
import 'package:interview/domain/entity/posts_domain.dart';

abstract class PostRepository {
  Future<List<PostsDomain>> getPosts();
}