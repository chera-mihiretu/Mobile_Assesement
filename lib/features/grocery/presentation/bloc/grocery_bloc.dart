import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_assessment/features/grocery/domain/usecase/get_all_grocery_usecase.dart';
import 'package:mobile_assessment/features/grocery/domain/usecase/get_grocery_usecase.dart';
import 'package:mobile_assessment/features/grocery/presentation/bloc/grocery_event.dart';
import 'package:mobile_assessment/features/grocery/presentation/bloc/grocery_state.dart';

class GroceryBloc extends Bloc<GroceryEvent, GroceryState> {
  final GetGroceryUsecase getGroceryUsecase;
  final GetAllGroceryUsecase getAllGroceryUsecase;
  GroceryBloc(
      {required this.getGroceryUsecase, required this.getAllGroceryUsecase})
      : super(InitialGroceryState()) {
    on<GetAllGroceryEvent>((even, emit) async {
      emit(GroceryLoadingState());

      final result = await getAllGroceryUsecase.execute();

      result.fold((failure) {
        emit(GroceryErrorState(message: failure.message));
      }, (data) {
        emit(AllGroceryLoadedState(data: data));
      });
    });
    on<GetGroceryEvent>((event, emit) async {
      emit(GroceryLoadingState());

      final result = await getGroceryUsecase.execute(event.id);

      result.fold((failure) {
        emit(GroceryErrorState(message: failure.message));
      }, (data) {
        emit(GroceryLoadedState(data: data));
      });
    });
  }
}
