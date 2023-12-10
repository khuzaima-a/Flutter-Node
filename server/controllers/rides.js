exports.getRides = (req, res, next) => {
    res.json({
        message: 'GET ALL RIDES!'
    });
}

exports.getRideDetails = (req, res, next) => {
    const rideId = req.params.rideId;
    res.json({
        message: 'GET RIDE DETAILS!',
        rideId: rideId
    });
}