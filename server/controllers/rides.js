const rides = [
    {
        id: 1,
        name: "Lahore to Karachi"
    },
    {
        id: 2,
        name: "Lahore to Islamabad"
    },
    {
        id: 3,
        name: "Lahore to Faisalabad"
    },
    {
        id: 4,
        name: "Multan to Karachi"
    }
]

exports.getRides = (req, res, next) => {
	console.log("Invoked");
    res.status(200).json({
        "message": "GET ALL RIDES!",
        "rides": [
          {"id": 1, "name": "Lahore to Karachi"},
          {"id": 2, "name": "Lahore to Islamabad"},
          // ... other rides
        ]
      }
      );
}

exports.getRideDetails = (req, res, next) => {
    const rideId = req.params.rideId;
    res.json({
        message: 'GET RIDE DETAILS!',
        rideId: rideId
    });
}