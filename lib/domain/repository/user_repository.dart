
import 'package:interview/domain/entity/user_domain.dart';

abstract class UserRepository {
  Future<List<UserDomain>> getUsers();
}
