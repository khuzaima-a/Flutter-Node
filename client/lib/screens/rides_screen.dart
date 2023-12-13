import 'package:flutter/material.dart';
import "package:client/models/ride.dart";
import "package:client/screens/ride_detail.dart";

class RidesScreen extends StatefulWidget {
  const RidesScreen({super.key});
  @override
  State<RidesScreen> createState() => _RidesScreenState();
}

class _RidesScreenState extends State<RidesScreen> {
  List<Ride> ridesToShow = [];
  final TextEditingController sourceController = TextEditingController();
  final TextEditingController destinationController = TextEditingController();
  String sourceText = '';
  String destinationText = '';

  @override
  void initState() {
    super.initState();
    ridesToShow = rides;
  }

  void filterRides() {
    setState(() {
      if (sourceText.isEmpty && destinationText.isEmpty) {
        ridesToShow = rides; // No filter, show all rides
      } else {
        ridesToShow = rides
            .where((ride) =>
                ride.source
                    .toLowerCase()
                    .contains(sourceText.toLowerCase().trim()) &&
                ride.destination
                    .toLowerCase()
                    .contains(destinationText.toLowerCase().trim()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Available Rides'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => {_showFilterDialog(context)},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: ridesToShow.length,
        itemBuilder: (context, index) {
          var ride = ridesToShow[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RideDetailPage(rideId: ride.id),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(24, 12, 24, 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 240, 238, 238),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(1, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(4, 16, 12, 16),
                child: Row(
                  children: [
                    SizedBox(
                      width: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.person_2_rounded,
                            size: 44,
                          ),
                          Text(ride.driver.name)
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${ride.source}  -  ${ride.destination}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text('${ride.departureTime} - ${ride.arrivalTime}'),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.directions_car),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(ride.vehicle.name)
                            ],
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 0,
                      child: SizedBox(
                        height: 75,
                        child: Text(
                          '${ride.fare.toInt()} PKR',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Filter Rides'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: sourceController,
                onChanged: (value) {
                  setState(() {
                    sourceText = value;
                  });
                },
                decoration:
                    const InputDecoration(labelText: 'Enter Source City'),
              ),
              TextField(
                controller: destinationController,
                onChanged: (value) {
                  setState(() {
                    destinationText = value;
                  });
                },
                decoration:
                    const InputDecoration(labelText: 'Enter Destination City'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                filterRides();
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
