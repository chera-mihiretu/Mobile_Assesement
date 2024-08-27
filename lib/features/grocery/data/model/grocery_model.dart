import 'package:mobile_assessment/features/grocery/data/model/option_model.dart';
import 'package:mobile_assessment/features/grocery/domain/entity/grocery_entity.dart';

class GroceryModel extends GroceryEntity {
  @override
  // ignore: overridden_fields
  final String id;
  @override
  // ignore: overridden_fields
  final String title;
  @override
  // ignore: overridden_fields
  final String imageUrl;
  @override
  // ignore: overridden_fields
  final double rating;
  @override
  // ignore: overridden_fields
  final int price;
  @override
  // ignore: overridden_fields
  final int discount;
  @override
  // ignore: overridden_fields
  final String description;
  @override
  // ignore: overridden_fields
  final List<OptionModel> options;

  GroceryModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.rating,
    required this.price,
    required this.discount,
    required this.description,
    required this.options,
  }) : super(
          id: id,
          title: title,
          imageUrl: imageUrl,
          rating: rating,
          price: price,
          discount: discount,
          description: description,
          options: options,
        );

  factory GroceryModel.fromJson(Map<String, dynamic> json) {
    var optionsFromJson = json['options'] as List;
    List<OptionModel> optionList =
        optionsFromJson.map((i) => OptionModel.fromJson(i)).toList();

    return GroceryModel(
      id: json['id'],
      title: json['title'],
      imageUrl: json['imageUrl'],
      rating: json['rating'].toDouble(),
      price: json['price'],
      discount: json['discount'],
      description: json['description'],
      options: optionList,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'rating': rating,
      'price': price,
      'discount': discount,
      'description': description,
      'options': options.map((option) => option.toJson()).toList(),
    };
  }

  GroceryEntity toEntity() {
    return GroceryEntity(
        id: id,
        title: title,
        imageUrl: imageUrl,
        rating: rating,
        price: price,
        discount: discount,
        description: description,
        options: options.map((option) => option.toEntity()).toList());
  }

  static List<GroceryEntity> toListEntity(List<GroceryModel> list) {
    final answer = list.map((grocery) => grocery.toEntity()).toList();
    return answer;
  }
}
