// Mocks generated by Mockito 5.4.2 from annotations
// in rideshare/test/features/pick_passengers/data/repositories/ride_offer_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:rideshare/features/pick_passengers/data/datasource/ride_offer_datasource.dart'
    as _i2;
import 'package:rideshare/features/pick_passengers/domain/entity/ride_offer.dart'
    as _i4;
import 'package:rideshare/features/pick_passengers/domain/entity/ride_request.dart'
    as _i5;

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

/// A class which mocks [RideOfferApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockRideOfferApi extends _i1.Mock implements _i2.RideOfferApi {
  MockRideOfferApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i3.Stream<List<_i4.RideOffer>>> getRideOffers(
          _i5.RideRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRideOffers,
          [request],
        ),
        returnValue: _i3.Future<_i3.Stream<List<_i4.RideOffer>>>.value(
            _i3.Stream<List<_i4.RideOffer>>.empty()),
      ) as _i3.Future<_i3.Stream<List<_i4.RideOffer>>>);
  @override
  _i3.Future<bool> addPassenger(String? rideOfferId) => (super.noSuchMethod(
        Invocation.method(
          #addPassenger,
          [rideOfferId],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
  @override
  dynamic updateDriverLocation(
          _i3.StreamController<dynamic>? carLocationController) =>
      super.noSuchMethod(Invocation.method(
        #updateDriverLocation,
        [carLocationController],
      ));
  @override
  dynamic stopSendingLocation(
          _i3.StreamController<dynamic>? carLocationStreamController) =>
      super.noSuchMethod(Invocation.method(
        #stopSendingLocation,
        [carLocationStreamController],
      ));
  @override
  _i3.Future<bool> dropPassegner(String? rideOfferId) => (super.noSuchMethod(
        Invocation.method(
          #dropPassegner,
          [rideOfferId],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
}