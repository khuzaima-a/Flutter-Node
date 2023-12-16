const mongoose = require('mongoose');

const Schema = mongoose.Schema;

const rideSchema = new Schema({
    source: {
        type: String,
    },
    destination: {
        type: String,
    },
    date : {
        type: String,
    },
    departureTime: {
        type: String,

    },
    arrivalTime: {
        type: String,

    },

    vehicleName: {
        type: String,
    },

    vehicleColor: {
        type: String
    },
   
    driver: {
        type: String,
    },
    fare: {
        type: Number,
    }
    });

module.exports = mongoose.model('Ride', rideSchema);