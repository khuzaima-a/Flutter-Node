const express = require('express');
const RidesController = require('../controllers/rides');

const router = express.Router();

router.get('/', RidesController.getRides);

router.get('/seed', RidesController.seedRides);

router.get('/:rideId', RidesController.getRideDetails)

module.exports = router;