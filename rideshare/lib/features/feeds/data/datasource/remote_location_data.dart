import 'dart:convert';

import 'package:rideshare/constants/api.dart';
import 'package:rideshare/core/errors/exceptions.dart';
import 'package:rideshare/features/feeds/data/model/location_model.dart';
import 'package:rideshare/features/feeds/domain/entity/location.dart';
import 'package:http/http.dart' as http;

abstract class RemoteLocationDataSource {
  Future<Location> getLocation(String cityName);
  Future<void> postLocation(
    double sourceLatitude,
    double sourceLongitude,
    double destinationLatitude,
    double destinationLongitude,
  );
}

class RemoteLocationDataSourceImpl extends RemoteLocationDataSource {
  final http.Client client;
  RemoteLocationDataSourceImpl({required this.client});
  @override
  Future<Location> getLocation(String cityName) async {
    try {
      final http.Response response =
          await http.get(Uri.parse('$api/?$cityName.json/access_token=$token'));
      final double latitude, longitude;
      latitude = jsonDecode(response.body)['center'][0];
      longitude = jsonDecode(response.body)['center'][1];
      return LocationModel.fromJson({
        'cityName': cityName,
        'latitude': latitude,
        'longitude': longitude,
      });
    } catch (e) {
      throw ServerException('Server Failure');
    }
  }

  @override
  Future<void> postLocation(
    double sourceLatitude,
    double sourceLongitude,
    double destinationLatitude,
    double destinationLongitude,
  ) async {
    const String url = 'http://localhost:3000/location';
    try {
      await http.get(Uri.parse(url));
    } catch (e) {
      throw ServerException('Server Falilure');
    }
  }
}
