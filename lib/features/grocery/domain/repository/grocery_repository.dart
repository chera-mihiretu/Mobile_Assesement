import 'package:dartz/dartz.dart';
import 'package:mobile_assessment/cores/failure/failure.dart';
import 'package:mobile_assessment/features/grocery/domain/entity/grocery_entity.dart';

abstract class GroceryRepository {
  Future<Either<Failure, List<GroceryEntity>>> getAllPGrocery();
  Future<Either<Failure, GroceryEntity>> getGrocery(String id);
}
