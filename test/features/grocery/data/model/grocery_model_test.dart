import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_assessment/features/grocery/data/model/grocery_model.dart';
import 'package:mobile_assessment/features/grocery/domain/entity/grocery_entity.dart';

import '../../../../test_data/test_data.dart';

void main() {
  test('Should be subclass of entity', () {
    expect(TestData.groceryModel, isA<GroceryEntity>());
  });

  test('should return valid model', () {
    final result = GroceryModel.fromJson(
        json.decode(TestData.readSingleGrocery())['data']);
    expect(result, TestData.groceryModel);
  });

  test('Shold change to entity', () {
    final result = TestData.groceryModel.toEntity();

    expect(result, TestData.groceryEntity);
  });

  test('Should change to list of entities', () {
    expect(GroceryModel.toListEntity([TestData.groceryModel]),
        [TestData.groceryEntity]);
  });
}
