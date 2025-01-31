import 'package:flutter/cupertino.dart';
import 'package:interview/domain/entity/user_domain.dart';
import 'package:interview/presentation/usecase/get_user_usecase.dart';




class UserViewmodel extends ChangeNotifier{
  final GetUserUsecase getUserUsecase;

  List<UserDomain> users = [];
  bool isLoading = false;

  UserViewmodel(this.getUserUsecase);

  Future<void> fetchUsers() async {
    isLoading = true;
    notifyListeners();

    try {
      users = await getUserUsecase();
    } catch (e) {

    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}