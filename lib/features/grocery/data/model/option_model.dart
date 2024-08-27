import 'package:mobile_assessment/features/grocery/domain/entity/option_entity.dart';

class OptionModel extends OptionEntity {
  @override
  // ignore: overridden_fields
  final String id;
  @override
  // ignore: overridden_fields
  final String name;
  @override
  // ignore: overridden_fields
  final double price;

  const OptionModel({
    required this.id,
    required this.name,
    required this.price,
  }) : super(id: id, name: name, price: price);

  factory OptionModel.fromJson(Map<String, dynamic> json) {
    return OptionModel(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }

  OptionEntity toEntity() {
    return OptionEntity(
      id: id,
      name: name,
      price: price,
    );
  }
}
