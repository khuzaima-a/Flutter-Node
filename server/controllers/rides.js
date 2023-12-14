const Ride = require('../models/ride');
const mongoose = require('mongoose');

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



exports.getRideDetails = (req, res, next) => {
    const rideId = req.params.rideId;

    Ride.findById(rideId)
    .then((ride) => {
        res.status(200).json({
            message: "Success",
            ride: ride
        });
    }).catch((err) => {
        res.status(500).json({
            message: "Error",
            error: err
        });
    })
}