


import 'package:interview/domain/entity/user_domain.dart';
import 'package:interview/domain/repository/user_repository.dart';

class GetUserUsecase {
  final UserRepository repository;

  GetUserUsecase(this.repository);

  Future<List<UserDomain>> call() async {
    return await repository.getUsers();
  }
}