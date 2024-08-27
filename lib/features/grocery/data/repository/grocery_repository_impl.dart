import 'package:dartz/dartz.dart';
import 'package:mobile_assessment/cores/exception/exceptions.dart';
import 'package:mobile_assessment/cores/failure/failure.dart';
import 'package:mobile_assessment/features/grocery/data/data_source/grocery_remote_data_source.dart';
import 'package:mobile_assessment/features/grocery/data/model/grocery_model.dart';
import 'package:mobile_assessment/features/grocery/domain/entity/grocery_entity.dart';
import 'package:mobile_assessment/features/grocery/domain/repository/grocery_repository.dart';

import '../../../../cores/exception/error_messages.dart';

class GroceryRepositoryImpl extends GroceryRepository {
  GroceryRemoteDataSource remoteDataSource;

  GroceryRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<GroceryEntity>>> getAllPGrocery() async {
    try {
      final result = await remoteDataSource.getAllGrocery();

      return Right(GroceryModel.toListEntity(result));
    } on ServerException {
      return const Left(ServerFailure(message: ErrorMessages.serverFailed));
    }
  }

  @override
  Future<Either<Failure, GroceryEntity>> getGrocery(String id) async {
    try {
      final result = await remoteDataSource.getGrocery(id);

      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure(message: ErrorMessages.serverFailed));
    }
  }
}
