import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_assessment/features/grocery/data/data_source/grocery_remote_data_source.dart';
import 'package:mockito/mockito.dart';

import '../../../../test_data/mock_generator.mocks.dart';
import 'package:http/http.dart' as http;

import '../../../../test_data/test_data.dart';

void main() {
  late MockHttpClient mockHttpClient;
  late GroceryRemoteDataSourceImpl groceryRemoteDataSourceImpl;
  setUp(() {
    mockHttpClient = MockHttpClient();
    groceryRemoteDataSourceImpl =
        GroceryRemoteDataSourceImpl(client: mockHttpClient);
  });

  group('get all', () {
    test('Should return value when request is success', () async {
      ///attange
      when(mockHttpClient.get(any)).thenAnswer(
          (_) async => http.Response(TestData.readAllGrocery(), 200));

      /// action
      final result = await groceryRemoteDataSourceImpl.getAllGrocery();

      /// assert
      verify(mockHttpClient.get(any));
    });
  });

  group('get ', () {
    test('Should return value when request is success yeah', () async {
      ///attange
      when(mockHttpClient.get(any)).thenAnswer(
          (_) async => http.Response(TestData.readSingleGrocery(), 200));

      /// action
      final result = await groceryRemoteDataSourceImpl
          .getGrocery(TestData.groceryModel.id);

      /// assert
      expect(result, TestData.groceryModel);
      verify(mockHttpClient.get(any));
    });
  });
}
