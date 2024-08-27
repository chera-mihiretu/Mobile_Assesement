import 'dart:io';

import 'package:mobile_assessment/features/grocery/data/model/grocery_model.dart';
import 'package:mobile_assessment/features/grocery/data/model/option_model.dart';
import 'package:mobile_assessment/features/grocery/domain/entity/grocery_entity.dart';
import 'package:mobile_assessment/features/grocery/domain/entity/option_entity.dart';

class TestData {
  static String readSingleGrocery() {
    String dir = Directory.current.path;
    if (dir.contains('/test')) {
      dir = dir.replaceAll('/test', '');
    }

    dir = '$dir/test/test_data/single_grocery.json';

    return File(dir).readAsStringSync();
  }

  static String readAllGrocery() {
    String dir = Directory.current.path;
    if (dir.contains('/test')) {
      dir = dir.replaceAll('/test', '');
    }

    dir = '$dir/test/test_data/all_grocery.json';

    return File(dir).readAsStringSync();
  }

  static GroceryModel groceryModel = GroceryModel(
    id: '66be460f71fccd1506882d24',
    title: 'Chicken Burger',
    imageUrl:
        'https://res.cloudinary.com/g5-mobile-track/image/upload/v1723747446/assessment/xhvgqvpt7pghwaeqnids.jpg',
    rating: 4.9,
    price: 11,
    discount: 6,
    description:
        'A delicious chicken burger served on a toasted bun with fresh lettuce, tomato slices, and mayonnaise. Juicy grilled chicken patty seasoned to perfection for a mouthwatering taste experience.',
    options: const [
      OptionModel(
        id: '66be474571fccd1506882d26',
        name: 'Add Cheese',
        price: 0.5,
      ),
      OptionModel(
        id: '66be479671fccd1506882d28',
        name: 'Add Bacon',
        price: 1,
      ),
      OptionModel(
        id: '66be47c671fccd1506882d29',
        name: 'Add Meat',
        price: 0,
      ),
    ],
  );

  static GroceryEntity groceryEntity = GroceryEntity(
    id: '66be460f71fccd1506882d24',
    title: 'Chicken Burger',
    imageUrl:
        'https://res.cloudinary.com/g5-mobile-track/image/upload/v1723747446/assessment/xhvgqvpt7pghwaeqnids.jpg',
    rating: 4.9,
    price: 11,
    discount: 6,
    description:
        'A delicious chicken burger served on a toasted bun with fresh lettuce, tomato slices, and mayonnaise. Juicy grilled chicken patty seasoned to perfection for a mouthwatering taste experience.',
    options: const [
      OptionEntity(
        id: '66be474571fccd1506882d26',
        name: 'Add Cheese',
        price: 0.5,
      ),
      OptionEntity(
        id: '66be479671fccd1506882d28',
        name: 'Add Bacon',
        price: 1,
      ),
      OptionEntity(
        id: '66be47c671fccd1506882d29',
        name: 'Add Meat',
        price: 0,
      ),
    ],
  );
}

void main() {
  final data = TestData.readAllGrocery();
}
