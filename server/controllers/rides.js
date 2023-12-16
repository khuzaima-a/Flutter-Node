const Ride = require('../models/ride');

exports.getRides = (req, res, next) => {
    Ride.find()
        .then(rides => {
            res.status(200).json({
                message: "Success",
                rides: rides
            });
        })
        .catch(err => {
            res.status(500).json({
                message: "Error",
                error: err
            });
        }); 
}

exports.seedRides = (req, res, next) => {
    const rides = [
        {
          source: "Lahore, Pk",
          destination: "Sheikhupura, Pk",
          date: "2023/11/30",
          departureTime: "09:00",
          arrivalTime: "10:00",
          vehicleName: "Honda 70",
          vehicleColor: 'Red',
          driver: "Khuzaima",
          fare: 300,
        },
        {
          source: "Lahore, Pk",
          destination: "Karachi, Pk",
          date: "2023/12/03",
          departureTime: "01:00",
          arrivalTime: "19:00",
          vehicleName: "Hundai Elantra",
          vehicleColor: 'White',
          driver:"Hanan",
          fare: 7900,
        },
        {
          source: "Lahore, Pk",
          destination: "Faisalabad, Pk",
          date: "2023/11/29",
          departureTime: "06:00",
          arrivalTime: "09:00",
          vehicleName: "Honda 125",
          vehicleColor: 'Red',
          driver: "Khuzaima",
          fare: 700,
        },
        {
          source: "Lahore, Pk",
          destination: "Islamabad, Pk",
          date: "2023/12/09",
          departureTime: "09:00",
          arrivalTime: "12:30",
          vehicleName: "Audi ETron-GT",
          vehicleColor: 'Gray',
          driver: "Khuzaima",
          fare: 2300,
        },
        {
          source: "Islamabad, Pk",
          destination: "Lahore, Pk",
          date: "2023/11/28",
          departureTime: "10:00",
          arrivalTime: "14:00",
          vehicleName: "Tesla Model S",
          vehicleColor: 'White',
          driver:  "Hanan",
          fare: 2300,
        },
      ];

    Ride.insertMany(rides)
    .then((rides) => {
        res.status(200).json({
            message: "Success",
            rides: rides
        });
    }).catch((err) => {
        res.status(500).json({
            message: "Error",
            error: err
        });
    });
}

exports.getRideDetails = (req, res, next) => {
    const id = req.params.rideId;

   
    Ride.findById(id)
        .then((ride) => {
            if (!ride) {
                return res.status(404).json({
                    message: "Ride not found",
                });
            }

            res.status(200).json({
                message: "Success",
                ride: ride
            });
        })
        .catch((err) => {
            res.status(500).json({
                message: "Error",
                error: err
            });
        });
};
