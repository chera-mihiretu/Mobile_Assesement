import 'package:mobile_assessment/features/grocery/domain/entity/option_entity.dart';

class GroceryEntity {
  final String id;
  final String title;
  final String imageUrl;
  final double rating;
  final int price;
  final int discount;
  final String description;
  final List<OptionEntity> options;

  GroceryEntity({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.rating,
    required this.price,
    required this.discount,
    required this.description,
    required this.options,
  });
}
