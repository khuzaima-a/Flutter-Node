// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:client/models/ride.dart';
import 'package:client/components/floating_button.dart';
import "package:http/http.dart" as http;
import "dart:convert";

class RideDetail extends StatefulWidget {
  const RideDetail({super.key, required this.rideId});
  final String rideId;
  @override
  State<RideDetail> createState() => _RideDetailState();
}

class _RideDetailState extends State<RideDetail> {
  dynamic ride;
  late String rideId;

  @override
  void initState() {
    super.initState();
    rideId = widget.rideId;
    fetchRide();
  }

  Future<void> fetchRide() async {
    final url = Uri.http(
      '192.168.129.187:3000',
      '/rides/$rideId',
    );
    final response = await http.get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = json.decode(response.body);

      if (responseData.containsKey('ride')) {
        dynamic ridesData = responseData['ride'];
        // ignore: no_leading_underscores_for_local_identifiers
        Map<String, dynamic> _ride = Map<String, dynamic>.from(ridesData);

        Ride fetchedRide = Ride(
          id: _ride['_id'],
          source: _ride['source'],
          destination: _ride['destination'],
          date: _ride['date'],
          departureTime: _ride['departureTime'],
          arrivalTime: _ride['arrivalTime'],
          driver: _ride['driver'],
          vehicleName: _ride['vehicleName'],
          vehicleColor: _ride['vehicleColor'],
          fare: _ride['fare'].toDouble(),
        );

        setState(() {
          ride = fetchedRide;
        });
      } else {
        throw Exception('Invalid response format');
      }
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (ride == null) {
      return (const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ));
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text("${ride.source} to ${ride.destination}"),
        ),
        body: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ride.date,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ride.source,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Departure at ${ride.departureTime}'),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ride.destination,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Arrival at ${ride.arrivalTime}'),
                ],
              ),
              const SizedBox(height: 16),
              const Divider(
                thickness: 3,
                color: Color.fromARGB(100, 187, 185, 185),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total Price for 1 Passenger'),
                  Text(
                    '${ride.fare.toInt()} PKR',
                    style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Divider(
                thickness: 3,
                color: Color.fromARGB(100, 187, 185, 185),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Contact ${ride.driver}',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(Icons.person_2_rounded,
                      size: 36, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                height: 1,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(200, 187, 185, 185),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                ride.vehicleName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                ride.vehicleColor,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: const FloatingButton(),
      );
    }
  }
}
