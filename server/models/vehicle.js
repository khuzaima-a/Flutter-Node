const mongoose = require('mongoose');

const Schema = mongoose.Schema;

const vehicleSchema = new Schema({
    name: {
        type: String,
        required: true
    },
    color: {
        type: String,
        required: true
    },
    type: {
        type: String,
        required: true
    },
    seats: {
        type: Number,
        required: true
    }
});

module.exports = mongoose.model('Vehicle', vehicleSchema);