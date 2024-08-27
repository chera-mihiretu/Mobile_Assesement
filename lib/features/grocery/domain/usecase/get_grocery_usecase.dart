import 'package:dartz/dartz.dart';
import 'package:mobile_assessment/cores/failure/failure.dart';
import 'package:mobile_assessment/features/grocery/domain/entity/grocery_entity.dart';
import 'package:mobile_assessment/features/grocery/domain/repository/grocery_repository.dart';

class GetGroceryUsecase {
  final GroceryRepository groceryRepository;

  GetGroceryUsecase({required this.groceryRepository});

  Future<Either<Failure, GroceryEntity>> execute(String id) async {
    return await groceryRepository.getGrocery(id);
  }
}
