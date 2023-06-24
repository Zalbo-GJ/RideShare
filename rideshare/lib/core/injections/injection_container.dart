import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:http/http.dart' as http;
import 'package:rideshare/core/injections/ride_request_injection.dart';
import '../network/network_info.dart';
import 'auth_injection.dart';
import 'hitory_injection.dart';
import 'location_injection.dart';

var sl = GetIt.instance;

Future<void> init() async {
  //! Features - User
  await authInjectionInit();

  await setupInjection();
  // //! Features - Location
  locationInjectionInit();

  // //! Features - RideRequest
  await RideRequestInjectionInit();

  //! External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton(() => InternetConnectionChecker());

}
