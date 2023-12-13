class Vehicle {
  final String name;
  final String color;
  final String type;
  final int seats;

  Vehicle(
      {required this.name,
      required this.color,
      required this.type,
      required this.seats});
}

class Driver {
  final int id;
  final String name;
  final String? image;

  Driver({required this.id, required this.name, this.image});
}

class Ride {
  final int id;
  final String source;
  final String destination;
  final String date;
  final String departureTime;
  final String arrivalTime;
  final Vehicle vehicle;
  final Driver driver;
  final double fare;

  Ride({
    required this.id,
    required this.source,
    required this.destination,
    required this.date,
    required this.departureTime,
    required this.arrivalTime,
    required this.vehicle,
    required this.driver,
    required this.fare,
  });
}

List<Ride> rides = [
  Ride(
    id: 1,
    source: "Karachi",
    destination: "Islamabad",
    date: "2023/12/14",
    departureTime: "12:00",
    arrivalTime: "16:00",
    vehicle:
        Vehicle(name: "Honda Civic", color: "White", type: "Car", seats: 3),
    driver: Driver(id: 2, name: "Hanan", image: null),
    fare: 1900,
  ),
  Ride(
    id: 2,
    source: "Lahore",
    destination: "Sheikhupura",
    date: "2023/11/30",
    departureTime: "09:00",
    arrivalTime: "10:00",
    vehicle: Vehicle(name: "Honda 70", color: "Red", type: "Bike", seats: 1),
    driver: Driver(
        id: 1,
        name: "Khuzaima",
        image: "https://avatars.githubusercontent.com/u/107122634?v=4"),
    fare: 300,
  ),
  Ride(
    id: 3,
    source: "Faisalabad",
    destination: "Islamabad",
    date: "2023/12/14",
    departureTime: "16:00",
    arrivalTime: "20:00",
    vehicle:
        Vehicle(name: "Audi ETron-GT", color: "White", type: "Car", seats: 3),
    driver: Driver(id: 2, name: "Adeel", image: null),
    fare: 2300,
  ),
  Ride(
    id: 4,
    source: "Lahore",
    destination: "Karachi",
    date: "2023/12/14",
    departureTime: "04:00",
    arrivalTime: "21:00",
    vehicle:
        Vehicle(name: "Suzuki Swift", color: "White", type: "Car", seats: 3),
    driver: Driver(id: 2, name: "Moiz", image: null),
    fare: 6700,
  ),
];
