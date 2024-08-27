import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_assessment/features/grocery/data/model/grocery_model.dart';
import 'package:mobile_assessment/features/grocery/domain/usecase/get_all_grocery_usecase.dart';
import 'package:mobile_assessment/features/grocery/presentation/bloc/grocery_bloc.dart';
import 'package:mobile_assessment/features/grocery/presentation/bloc/grocery_event.dart';
import 'package:mobile_assessment/features/grocery/presentation/bloc/grocery_state.dart';
import 'package:mockito/mockito.dart';

import '../../../../test_data/mock_generator.mocks.dart';
import '../../../../test_data/test_data.dart';

void main() {
  late MockGetGroceryUsecase mockGetGroceryUsecase;
  late MockGetAllGroceryUsecase mockGetAllGroceryUsecase;
  late GroceryBloc bloc;

  setUp(() {
    mockGetGroceryUsecase = MockGetGroceryUsecase();
    mockGetAllGroceryUsecase = MockGetAllGroceryUsecase();
    bloc = GroceryBloc(
        getGroceryUsecase: mockGetGroceryUsecase,
        getAllGroceryUsecase: mockGetAllGroceryUsecase);
  });

  blocTest<GroceryBloc, GroceryState>(
    'emits [emit loading then get prodcuct] when MyEvent is added.',
    build: () {
      when(mockGetGroceryUsecase.execute(any))
          .thenAnswer((_) async => Right(TestData.groceryEntity));

      return bloc;
    },
    act: (bloc) => bloc.add(
      GetGroceryEvent(id: TestData.groceryModel.id),
    ),
    expect: () => [
      GroceryLoadingState(),
      GroceryLoadedState(data: TestData.groceryEntity)
    ],
  );
  List<dynamic> list = json.decode(TestData.readAllGrocery())['data'];

  final mapped =
      list.map((val) => GroceryModel.fromJson(val).toEntity()).toList();
  blocTest<GroceryBloc, GroceryState>(
    'emits [emit loading then get prodcuct] when MyEvent is added.',
    build: () {
      when(mockGetAllGroceryUsecase.execute())
          .thenAnswer((_) async => Right(mapped));

      return bloc;
    },
    act: (bloc) => bloc.add(
      GetAllGroceryEvent(),
    ),
    expect: () => [
      GroceryLoadingState(),
      AllGroceryLoadedState(data: mapped),
    ],
  );
}
