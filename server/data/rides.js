const Rides = [
    {
      _id: 1,
      source: "Lahore, Pk",
      destination: "Islamabad, Pk",
      date: "2023/12/14",
      departureTime: "12:00",
      arrivalTime: "16:00",
      vehicle: {
        name: "Honda Civic",
        color: "White",
        type: "Car",
        seats: 3,
      },
      driver: {
        id: 2,
        name: "Hanan",
      },
      fare: 1900,
    },
    {
      id: 2,
      source: "Lahore, Pk",
      destination: "Sheikhupura, Pk",
      date: "2023/11/30",
      departureTime: "09:00",
      arrivalTime: "10:00",
      vehicle: {
        name: "Honda 70",
        color: "Red",
        type: "Bike",
        seats: 1,
      },
      driver: {
        id: 1,
        name: "Khuzaima",
      },
      fare: 300,
    },
    {
      id: 3,
      source: "Lahore, Pk",
      destination: "Karachi, Pk",
      date: "2023/12/03",
      departureTime: "01:00",
      arrivalTime: "19:00",
      vehicle: {
        name: "Hundai Elantra",
        color: "Black",
        type: "Car",
        seats: 2,
      },
      driver: {
        id: 2,
        name: "Hanan",
      },
      fare: 7900,
    },
    {
      id: 4,
      source: "Lahore, Pk",
      destination: "Faisalabad, Pk",
      date: "2023/11/29",
      departureTime: "06:00",
      arrivalTime: "09:00",
      vehicle: {
        name: "Honda 125",
        color: "Red",
        type: "Bike",
        seats: 1,
      },
      driver: {
        id: 1,
        name: "Khuzaima",
      },
      fare: 700,
    },
    {
      id: 5,
      source: "Lahore, Pk",
      destination: "Islamabad, Pk",
      date: "2023/12/09",
      departureTime: "09:00",
      arrivalTime: "12:30",
      vehicle: {
        name: "Audi E Tron GT",
        color: "White",
        type: "Car",
        seats: 3,
      },
      driver: {
        id: 1,
        name: "Khuzaima",
      },
      fare: 2300,
    },
    {
      id: 6,
      source: "Islamabad, Pk",
      destination: "Lahore, Pk",
      date: "2023/11/28",
      departureTime: "10:00",
      arrivalTime: "14:00",
      vehicle: {
        name: "Tesla Model S",
        color: "White",
        type: "Car",
        seats: 2,
      },
      driver: {
        id: 2,
        name: "Hanan",
      },
      fare: 2300,
    },
  ];
  
  exports.rides = Rides;