import 'location.dart';
import 'user.dart';

class RideOffer {
  final String rideOfferId;
  final String originAddress;
  final String destinationAddress;
  final User user;
  final Location currentLocation;
  final Location destination;
  final int seatsAllocated;
  final double price;
  final String status;
  final bool accepted;

  RideOffer(
      {required this.accepted,
      required this.originAddress,
      required this.destinationAddress,
      required this.user,
      required this.status,
      required this.rideOfferId,
      required this.currentLocation,
      required this.destination,
      required this.seatsAllocated,
      required this.price});
}
