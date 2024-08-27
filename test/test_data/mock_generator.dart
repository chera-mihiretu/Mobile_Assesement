import 'package:mobile_assessment/features/grocery/data/data_source/grocery_remote_data_source.dart';
import 'package:mobile_assessment/features/grocery/domain/repository/grocery_repository.dart';
import 'package:mobile_assessment/features/grocery/domain/usecase/get_all_grocery_usecase.dart';
import 'package:mobile_assessment/features/grocery/domain/usecase/get_grocery_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

@GenerateMocks(
  [
    GroceryRemoteDataSource,
    GetAllGroceryUsecase,
    GetGroceryUsecase,
    GroceryRepository,
  ],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)
void main() {}
