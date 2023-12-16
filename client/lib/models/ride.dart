class Ride {
  final String id;
  final String source;
  final String destination;
  final String date;
  final String departureTime;
  final String arrivalTime;
  final String driver;
  final String vehicleName;
  final String vehicleColor;
  final double fare;

  Ride({
    required this.id,
    required this.source,
    required this.destination,
    required this.date,
    required this.departureTime,
    required this.arrivalTime,
    required this.vehicleName,
    required this.vehicleColor,
    required this.driver,
    required this.fare,
  });
}
