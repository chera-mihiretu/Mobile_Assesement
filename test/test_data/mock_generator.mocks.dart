// Mocks generated by Mockito 5.4.4 from annotations
// in mobile_assessment/test/test_data/mock_generator.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;
import 'dart:convert' as _i12;
import 'dart:typed_data' as _i14;

import 'package:dartz/dartz.dart' as _i4;
import 'package:http/http.dart' as _i5;
import 'package:mobile_assessment/cores/failure/failure.dart' as _i9;
import 'package:mobile_assessment/features/grocery/data/data_source/grocery_remote_data_source.dart'
    as _i6;
import 'package:mobile_assessment/features/grocery/data/model/grocery_model.dart'
    as _i2;
import 'package:mobile_assessment/features/grocery/domain/entity/grocery_entity.dart'
    as _i10;
import 'package:mobile_assessment/features/grocery/domain/repository/grocery_repository.dart'
    as _i3;
import 'package:mobile_assessment/features/grocery/domain/usecase/get_all_grocery_usecase.dart'
    as _i8;
import 'package:mobile_assessment/features/grocery/domain/usecase/get_grocery_usecase.dart'
    as _i11;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i13;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeGroceryModel_0 extends _i1.SmartFake implements _i2.GroceryModel {
  _FakeGroceryModel_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGroceryRepository_1 extends _i1.SmartFake
    implements _i3.GroceryRepository {
  _FakeGroceryRepository_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_2<L, R> extends _i1.SmartFake implements _i4.Either<L, R> {
  _FakeEither_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_3 extends _i1.SmartFake implements _i5.Response {
  _FakeResponse_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamedResponse_4 extends _i1.SmartFake
    implements _i5.StreamedResponse {
  _FakeStreamedResponse_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GroceryRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockGroceryRemoteDataSource extends _i1.Mock
    implements _i6.GroceryRemoteDataSource {
  MockGroceryRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<List<_i2.GroceryModel>> getAllGrocery() => (super.noSuchMethod(
        Invocation.method(
          #getAllGrocery,
          [],
        ),
        returnValue:
            _i7.Future<List<_i2.GroceryModel>>.value(<_i2.GroceryModel>[]),
      ) as _i7.Future<List<_i2.GroceryModel>>);

  @override
  _i7.Future<_i2.GroceryModel> getGrocery(String? id) => (super.noSuchMethod(
        Invocation.method(
          #getGrocery,
          [id],
        ),
        returnValue: _i7.Future<_i2.GroceryModel>.value(_FakeGroceryModel_0(
          this,
          Invocation.method(
            #getGrocery,
            [id],
          ),
        )),
      ) as _i7.Future<_i2.GroceryModel>);
}

/// A class which mocks [GetAllGroceryUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAllGroceryUsecase extends _i1.Mock
    implements _i8.GetAllGroceryUsecase {
  MockGetAllGroceryUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.GroceryRepository get groceryRepository => (super.noSuchMethod(
        Invocation.getter(#groceryRepository),
        returnValue: _FakeGroceryRepository_1(
          this,
          Invocation.getter(#groceryRepository),
        ),
      ) as _i3.GroceryRepository);

  @override
  _i7.Future<_i4.Either<_i9.Failure, List<_i10.GroceryEntity>>> execute() =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
        ),
        returnValue:
            _i7.Future<_i4.Either<_i9.Failure, List<_i10.GroceryEntity>>>.value(
                _FakeEither_2<_i9.Failure, List<_i10.GroceryEntity>>(
          this,
          Invocation.method(
            #execute,
            [],
          ),
        )),
      ) as _i7.Future<_i4.Either<_i9.Failure, List<_i10.GroceryEntity>>>);
}

/// A class which mocks [GetGroceryUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetGroceryUsecase extends _i1.Mock implements _i11.GetGroceryUsecase {
  MockGetGroceryUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.GroceryRepository get groceryRepository => (super.noSuchMethod(
        Invocation.getter(#groceryRepository),
        returnValue: _FakeGroceryRepository_1(
          this,
          Invocation.getter(#groceryRepository),
        ),
      ) as _i3.GroceryRepository);

  @override
  _i7.Future<_i4.Either<_i9.Failure, _i10.GroceryEntity>> execute(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [id],
        ),
        returnValue:
            _i7.Future<_i4.Either<_i9.Failure, _i10.GroceryEntity>>.value(
                _FakeEither_2<_i9.Failure, _i10.GroceryEntity>(
          this,
          Invocation.method(
            #execute,
            [id],
          ),
        )),
      ) as _i7.Future<_i4.Either<_i9.Failure, _i10.GroceryEntity>>);
}

/// A class which mocks [GroceryRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockGroceryRepository extends _i1.Mock implements _i3.GroceryRepository {
  MockGroceryRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i4.Either<_i9.Failure, List<_i10.GroceryEntity>>>
      getAllPGrocery() => (super.noSuchMethod(
            Invocation.method(
              #getAllPGrocery,
              [],
            ),
            returnValue: _i7.Future<
                    _i4.Either<_i9.Failure, List<_i10.GroceryEntity>>>.value(
                _FakeEither_2<_i9.Failure, List<_i10.GroceryEntity>>(
              this,
              Invocation.method(
                #getAllPGrocery,
                [],
              ),
            )),
          ) as _i7.Future<_i4.Either<_i9.Failure, List<_i10.GroceryEntity>>>);

  @override
  _i7.Future<_i4.Either<_i9.Failure, _i10.GroceryEntity>> getGrocery(
          String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getGrocery,
          [id],
        ),
        returnValue:
            _i7.Future<_i4.Either<_i9.Failure, _i10.GroceryEntity>>.value(
                _FakeEither_2<_i9.Failure, _i10.GroceryEntity>(
          this,
          Invocation.method(
            #getGrocery,
            [id],
          ),
        )),
      ) as _i7.Future<_i4.Either<_i9.Failure, _i10.GroceryEntity>>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i5.Client {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i5.Response> head(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [url],
          {#headers: headers},
        ),
        returnValue: _i7.Future<_i5.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #head,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i7.Future<_i5.Response>);

  @override
  _i7.Future<_i5.Response> get(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {#headers: headers},
        ),
        returnValue: _i7.Future<_i5.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i7.Future<_i5.Response>);

  @override
  _i7.Future<_i5.Response> post(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i12.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i7.Future<_i5.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #post,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response>);

  @override
  _i7.Future<_i5.Response> put(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i12.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i7.Future<_i5.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #put,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response>);

  @override
  _i7.Future<_i5.Response> patch(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i12.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i7.Future<_i5.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #patch,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response>);

  @override
  _i7.Future<_i5.Response> delete(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i12.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i7.Future<_i5.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response>);

  @override
  _i7.Future<String> read(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [url],
          {#headers: headers},
        ),
        returnValue: _i7.Future<String>.value(_i13.dummyValue<String>(
          this,
          Invocation.method(
            #read,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i7.Future<String>);

  @override
  _i7.Future<_i14.Uint8List> readBytes(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readBytes,
          [url],
          {#headers: headers},
        ),
        returnValue: _i7.Future<_i14.Uint8List>.value(_i14.Uint8List(0)),
      ) as _i7.Future<_i14.Uint8List>);

  @override
  _i7.Future<_i5.StreamedResponse> send(_i5.BaseRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #send,
          [request],
        ),
        returnValue:
            _i7.Future<_i5.StreamedResponse>.value(_FakeStreamedResponse_4(
          this,
          Invocation.method(
            #send,
            [request],
          ),
        )),
      ) as _i7.Future<_i5.StreamedResponse>);

  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
