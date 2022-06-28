// Mocks generated by Mockito 5.2.0 from annotations
// in flutter_unit_testing/test/fake_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:flutter_unit_testing/models/fake_model.dart' as _i4;
import 'package:flutter_unit_testing/models/fake_model_firebase.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;

import 'repositry/fake_api_repo.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [FakeMockTest].
///
/// See the documentation for Mockito's code generation for more information.
class MockFakeMockTest extends _i1.Mock implements _i2.FakeMockTest {
  MockFakeMockTest() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.FakeModel>> getUserResult() =>
      (super.noSuchMethod(Invocation.method(#getUserResult, []),
              returnValue: Future<List<_i4.FakeModel>>.value(<_i4.FakeModel>[]))
          as _i3.Future<List<_i4.FakeModel>>);
  @override
  _i3.Future<List<_i5.SamplefirbaseData>> getUser() =>
      (super.noSuchMethod(Invocation.method(#getUser, []),
              returnValue: Future<List<_i5.SamplefirbaseData>>.value(
                  <_i5.SamplefirbaseData>[]))
          as _i3.Future<List<_i5.SamplefirbaseData>>);
  @override
  bool getVlaue() =>
      (super.noSuchMethod(Invocation.method(#getVlaue, []), returnValue: false)
          as bool);
}