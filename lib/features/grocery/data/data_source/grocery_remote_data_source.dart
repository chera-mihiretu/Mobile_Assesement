import 'dart:collection';
import 'dart:convert';
import 'dart:developer';

import 'package:mobile_assessment/cores/constants/constants.dart';
import 'package:mobile_assessment/cores/exception/exceptions.dart';
import 'package:mobile_assessment/features/grocery/data/model/grocery_model.dart';
import 'package:http/http.dart' as http;

abstract class GroceryRemoteDataSource {
  Future<List<GroceryModel>> getAllGrocery();
  Future<GroceryModel> getGrocery(String id);
}

class GroceryRemoteDataSourceImpl extends GroceryRemoteDataSource {
  final http.Client client;

  GroceryRemoteDataSourceImpl({required this.client});
  @override
  Future<List<GroceryModel>> getAllGrocery() async {
    try {
      final result = await client
          .get(
            Uri.parse(AppConstant.baseUrl),
          )
          .timeout(const Duration(seconds: 15));

      if (result.statusCode == 200) {
        final jsonFormat = json.decode(result.body);

        List<GroceryModel> answer = [];
        for (var model in jsonFormat['data']) {
          answer.add(GroceryModel.fromJson(model));
        }
        return answer;
      } else {
        throw ServerException();
      }
    } on ServerException {
      rethrow;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<GroceryModel> getGrocery(String id) async {
    try {
      final result = await client
          .get(
            Uri.parse('${AppConstant.baseUrl}/$id'),
          )
          .timeout(const Duration(seconds: 15));

      if (result.statusCode == 200) {
        final jsonFormat = json.decode(result.body);
        return GroceryModel.fromJson(jsonFormat['data']);
      } else {
        throw ServerException();
      }
    } on ServerException {
      rethrow;
    } on Exception {
      rethrow;
    }
  }
}
