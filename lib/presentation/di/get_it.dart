

import 'package:get_it/get_it.dart';
import 'package:interview/data/repository/user_repository_impl.dart';
import 'package:interview/data/services/api_service.dart';
import 'package:interview/domain/repository/user_repository.dart';
import 'package:interview/presentation/usecase/get_user_usecase.dart';
import 'package:interview/presentation/viewmodel/user_viewmodel.dart';



final GetIt locator = GetIt.instance;


void setupLocator() {

  locator.registerLazySingleton(() => UserApiService());


  locator.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(locator()));


  locator.registerLazySingleton(() => GetUserUsecase(locator()));


  locator.registerFactory(() => UserViewmodel(locator()));
}