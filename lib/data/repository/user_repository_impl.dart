


import 'package:interview/data/services/api_service.dart';
import 'package:interview/domain/entity/user_domain.dart';
import 'package:interview/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  late final UserApiService apiService;

  UserRepositoryImpl(this.apiService);


  @override
  Future<List<UserDomain>> getUsers() async {
    final dtos = await apiService.fetchUsers();
    return dtos.map((dtos) => UserDomain(dtos.id, dtos.name, dtos.username,dtos.email,dtos.address,dtos.phone,dtos.company,dtos.website)).toList();
  }
}
