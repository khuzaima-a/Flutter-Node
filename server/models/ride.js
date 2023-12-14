const mongoose = require('mongoose');
const Vehicle = require('./vehicle');

const Schema = mongoose.Schema;

const rideSchema = new Schema({
    source: {
        type: String,
        required: true
    },
    destination: {
        type: String,
        required: true
    },
    date : {
        type: Date,
        required: true
    },
    departureTime: {
        type: String,
        required: true
    },
    arrivalTime: {
        type: String,
        required: true
    },

    vehicle: {
        type: Schema.Types.ObjectId,
        ref: 'Vehicle',
        required: true
    },
   
    driver: {
        type: String,
        required: true
    },
    fare: {
        type: Number,
        required: true
    }
    });

module.exports = mongoose.model('Ride', rideSchema);