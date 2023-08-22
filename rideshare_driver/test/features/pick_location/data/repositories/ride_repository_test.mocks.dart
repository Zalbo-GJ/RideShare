// Mocks generated by Mockito 5.4.2 from annotations
// in rideshare/test/features/pick_location/data/repositories/ride_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:rideshare/features/pick_location/data/datasources/ride_remote_data_source.dart'
    as _i2;
import 'package:rideshare/features/pick_location/domain/entities/ride_offer.dart'
    as _i5;
import 'package:rideshare/features/pick_location/domain/entities/ride_request.dart'
    as _i4;

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

/// A class which mocks [RideRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockRideRemoteDataSource extends _i1.Mock
    implements _i2.RideRemoteDataSource {
  MockRideRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i3.Stream<_i4.RideRequest>> getRideRequest(
          _i5.RideOffer? passenger) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRideRequest,
          [passenger],
        ),
        returnValue: _i3.Future<_i3.Stream<_i4.RideRequest>>.value(
            _i3.Stream<_i4.RideRequest>.empty()),
      ) as _i3.Future<_i3.Stream<_i4.RideRequest>>);
  @override
  _i3.Future<bool> cancelRideRequest(
    String? rideRequestId,
    String? userPhone,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #cancelRideRequest,
          [
            rideRequestId,
            userPhone,
          ],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
}
