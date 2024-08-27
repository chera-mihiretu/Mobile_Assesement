import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_assessment/features/grocery/data/data_source/grocery_remote_data_source.dart';
import 'package:mobile_assessment/features/grocery/data/repository/grocery_repository_impl.dart';
import 'package:mobile_assessment/features/grocery/domain/repository/grocery_repository.dart';
import 'package:mobile_assessment/features/grocery/domain/usecase/get_all_grocery_usecase.dart';
import 'package:mobile_assessment/features/grocery/domain/usecase/get_grocery_usecase.dart';
import 'package:mobile_assessment/features/grocery/presentation/bloc/grocery_bloc.dart';

final locator = GetIt.instance;

Future<void> init() async {
  //! External Instances
  locator.registerLazySingleton(() => http.Client());

  //! Features of app

  // data layers
  // Remote Data
  locator.registerLazySingleton<GroceryRemoteDataSource>(
      () => GroceryRemoteDataSourceImpl(client: locator()));

  // Repositories
  locator.registerLazySingleton<GroceryRepository>(
    () => GroceryRepositoryImpl(remoteDataSource: locator()),
  );

  // usecases
  locator.registerLazySingleton(
      () => GetAllGroceryUsecase(groceryRepository: locator()));
  locator.registerLazySingleton(
      () => GetGroceryUsecase(groceryRepository: locator()));

  // bloc
  locator.registerFactory(
    () => GroceryBloc(
        getAllGroceryUsecase: locator(), getGroceryUsecase: locator()),
  );

  // final sharedPreferences = await SharedPreferences.getInstance();
  // locator.registerLazySingleton(() => sharedPreferences);
}
