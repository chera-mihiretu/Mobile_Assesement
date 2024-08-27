import 'package:equatable/equatable.dart';
import 'package:mobile_assessment/features/grocery/domain/entity/grocery_entity.dart';

class GroceryState extends Equatable {
  final List<dynamic>? childs;

  const GroceryState({this.childs = const []});
  @override
  List<Object?> get props => [];
}

class InitialGroceryState extends GroceryState {}

class GroceryLoadingState extends GroceryState {}

class AllGroceryLoadedState extends GroceryState {
  final List<GroceryEntity> data;

  const AllGroceryLoadedState({required this.data}) : super(childs: data);
}

class GroceryLoadedState extends GroceryState {
  final GroceryEntity data;

  GroceryLoadedState({required this.data}) : super(childs: [data]);
}

class GroceryErrorState extends GroceryState {
  final String message;
  GroceryErrorState({required this.message}) : super(childs: [message]);
}
