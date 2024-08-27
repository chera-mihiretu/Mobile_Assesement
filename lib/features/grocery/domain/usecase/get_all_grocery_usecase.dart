import 'package:dartz/dartz.dart';
import 'package:mobile_assessment/cores/failure/failure.dart';
import 'package:mobile_assessment/features/grocery/domain/entity/grocery_entity.dart';
import 'package:mobile_assessment/features/grocery/domain/repository/grocery_repository.dart';

class GetAllGroceryUsecase {
  final GroceryRepository groceryRepository;

  GetAllGroceryUsecase({required this.groceryRepository});

  Future<Either<Failure, List<GroceryEntity>>> execute() async {
    return await groceryRepository.getAllPGrocery();
  }
}
