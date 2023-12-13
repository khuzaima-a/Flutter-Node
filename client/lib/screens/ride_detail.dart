// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:client/models/ride.dart";

class RideDetailPage extends StatelessWidget {
  final int rideId;

  late Ride ride;

  RideDetailPage({super.key, required this.rideId});

  @override
  Widget build(BuildContext context) {
    ride = rides.firstWhere((ride) => ride.id == rideId);
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
                  'Contact ${ride.driver.name}',
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
                  color: Color.fromARGB(200, 187, 185, 185)),
            ),
            const SizedBox(height: 16),
            Text('Max ${ride.vehicle.seats} Seats Available.'),
            const SizedBox(height: 16),
            Container(
              height: 1,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(200, 187, 185, 185)),
            ),
            const SizedBox(height: 24),
            Text(
              ride.vehicle.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              ride.vehicle.color,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: const Text('Book Now!'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
