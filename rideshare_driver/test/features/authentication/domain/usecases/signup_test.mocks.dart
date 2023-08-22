// Mocks generated by Mockito 5.4.2 from annotations
// in rideshare/test/features/authentication/domain/usecases/signup_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:rideshare/core/errors/failures.dart' as _i5;
import 'package:rideshare/features/authentication/domain/entities/login_payload.dart'
    as _i6;
import 'package:rideshare/features/authentication/domain/entities/signup_payload.dart'
    as _i8;
import 'package:rideshare/features/authentication/domain/entities/user_profile.dart'
    as _i7;
import 'package:rideshare/features/authentication/domain/repositories/authentication_repository.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthenticationRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthenticationRepository extends _i1.Mock
    implements _i3.AuthenticationRepository {
  MockAuthenticationRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.LoginPayload>> login(
          _i6.LoginPayload? userCredentials) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [userCredentials],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.Failure, _i6.LoginPayload>>.value(
                _FakeEither_0<_i5.Failure, _i6.LoginPayload>(
          this,
          Invocation.method(
            #login,
            [userCredentials],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.LoginPayload>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i7.UserProfile>> signup(
          _i8.SignupPayload? newUserCredentials) =>
      (super.noSuchMethod(
        Invocation.method(
          #signup,
          [newUserCredentials],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i7.UserProfile>>.value(
            _FakeEither_0<_i5.Failure, _i7.UserProfile>(
          this,
          Invocation.method(
            #signup,
            [newUserCredentials],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i7.UserProfile>>);
}

/// A class which mocks [Failure].
///
/// See the documentation for Mockito's code generation for more information.
class MockFailure extends _i1.Mock implements _i5.Failure {
  MockFailure() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get message => (super.noSuchMethod(
        Invocation.getter(#message),
        returnValue: '',
      ) as String);
  @override
  List<Object> get props => (super.noSuchMethod(
        Invocation.getter(#props),
        returnValue: <Object>[],
      ) as List<Object>);
}