abstract class GroceryEvent {}

class GetGroceryEvent extends GroceryEvent {
  final String id;

  GetGroceryEvent({required this.id});
}

class GetAllGroceryEvent extends GroceryEvent {}
